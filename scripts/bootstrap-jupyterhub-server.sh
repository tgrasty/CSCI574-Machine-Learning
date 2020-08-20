#!/usr/bin/env bash
#
# Assumes that anacanda3 Python installed as baseline before calling this bootstrap.
#
# Using these instructions to setup JupyterHub:
# https://www.pugetsystems.com/labs/hpc/Note-JupyterHub-with-JupyterLab-Install-using-Conda-1729/
#
# NOTE: by default JupyterHub is running on port 8000, so need to uncomment port forwarding for this
# port if want to view on host browser insted of browser in the guest VM

# create conda environment for JupyterHub with JupyterLab installation/run environment
#/opt/anaconda3/bin/conda create --name jupyterhub jupyterhub jupyterlab ipywidgets nodejs
/opt/anaconda3/bin/conda create --yes --name jupyterhub -c conda-forge jupyterhub jupyterlab ipywidgets ipympl nodejs=10

# create JupyterHub config file
mkdir -p /opt/anaconda3/envs/jupyterhub/etc/jupyterhub
cd /opt/anaconda3/envs/jupyterhub/etc/jupyterhub
/opt/anaconda3/envs/jupyterhub/bin/jupyterhub --generate-config

# set default ocnfig to use JupyterLab
sed -i "s|#c.Spawner.default_url = ''|c.Spawner.default_url = '/lab'|" jupyterhub_config.py

# use systemd to start JupyterHub on boot
mkdir -p /opt/anaconda3/envs/jupyterhub/etc/systemd

cat << EOF > /opt/anaconda3/envs/jupyterhub/etc/systemd/jupyterhub.service
[Unit]
Description=JupyterHub
After=syslog.target network.target

[Service]
User=root
Environment="PATH=/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/opt/anaconda3/envs/jupyterhub/bin"
ExecStart=/opt/anaconda3/envs/jupyterhub/bin/jupyterhub -f /opt/anaconda3/envs/jupyterhub/etc/jupyterhub/jupyterhub_config.py

[Install]
WantedBy=multi-user.target

EOF

# link to OS systemd directory
ln -s /opt/anaconda3/envs/jupyterhub/etc/systemd/jupyterhub.service /etc/systemd/system/jupyterhub.service

# add extra (system-wide) kernels for JupyterLab
# Anaconda3 (full scientific python stack)
/opt/anaconda3/bin/conda create --yes --name python3-datasci anaconda numpy scipy matplotlib pandas seaborn keras tensorflow statsmodels tensorflow-gpu pytorch torchvision cudatoolkit=10.1 ipykernel ipympl nodejs=10
/opt/anaconda3/envs/python3-datasci/bin/python -m ipykernel install --name 'python3-datasci' --display-name "python3-datasci"

# tensorflow 2.1 w/gpu support and full scientific python stack
#/opt/anaconda3/bin/conda create --yes --name tensorflow2.1-gpu anaconda numpy scipy matplotlib pandas seaborn keras tensorflow statsmodels tensorflow-gpu ipykernel
#/opt/anaconda3/envs/tensorflow2.1-gpu/bin/python -m ipykernel install --name 'tensorflow2.1-gpu' --display-name "ThensorFlow 2.1 GPU"

# pytorch 1.4 w/gpu support and full scientific python stack
#/opt/anaconda3/bin/conda create --yes --name pytorch1.5-gpu anaconda anaconda numpy scipy matplotlib pandas seaborn keras tensorflow statsmodels ipykernel pytorch torchvision  cudatoolkit=10.1  -c pytorch 
#/opt/anaconda3/envs/pytorch1.5-gpu/bin/python -m ipykernel install --name 'pytorch1.5-gpu' --display-name "PyTorch 1.5 GPU"

# need to make the new environment kernel files be members of the conda group
chgrp -R conda /opt/anaconda3
chmod 770 -R /opt/anaconda3

# start JupyterHub and enable it as a service
systemctl start jupyterhub.service
systemctl enable jupyterhub.service

# set up lab extensions
conda activate jupyterhub
/opt/anaconda3/envs/jupyterhub/bin/jupyter labextension install --no-build @jupyterlab/toc
/opt/anaconda3/envs/jupyterhub/bin/jupyter labextension install --no-build @aquirdturtle/collapsible_headings
/opt/anaconda3/envs/python3-datasci/bin/jupyter labextension install --no-build @jupyter-widgets/jupyterlab-manager
/opt/anaconda3/envs/python3-datasci/bin/jupyter labextension install --no-build jupyter-matplotlib
/opt/anaconda3/envs/jupyterhub/bin/jupyter lab clean
/opt/anaconda3/envs/jupyterhub/bin/jupyter lab build

conda activate python3-datasci
/opt/anaconda3/envs/python3-datasci/bin/jupyter labextension install --no-build @jupyter-widgets/jupyterlab-manager
/opt/anaconda3/envs/python3-datasci/bin/jupyter labextension install --no-build jupyter-matplotlib
/opt/anaconda3/envs/python3-datasci/bin/jupyter lab clean
/opt/anaconda3/envs/python3-datasci/bin/jupyter lab build


echo "Anaconda Python3 installed successfully, JupyterHub/JupyterLab server running!"

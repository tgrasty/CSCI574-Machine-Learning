#!/usr/bin/env bash

# install anaconda python package management system for all users
cd /vagrant # change to shared vagrant directory to put download into
wget -c https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh
bash Anaconda3-2020.02-Linux-x86_64.sh -b -p /opt/anaconda3
export PATH="/opt/anaconda3/bin:$PATH"
addgroup conda # group for people who need to use conda
chgrp -R conda /opt/anaconda3
chmod 770 -R /opt/anaconda3
adduser vagrant conda

# make sure python scientific library stack is basically there
/opt/anaconda3/bin/conda install -y numpy scipy matplotlib pandas seaborn keras tensorflow tensorflow-gpu statsmodels

# install pandoc / markdown using anaconda3
/opt/anaconda3/bin/conda install -y pandoc

# some packages we use in some classes external to python for generating figures/videos
apt install -y ffmpeg graphviz

# set up link to /etc/profile.d so standard .bashrc will setup path for all users
ln -s /opt/anaconda3/etc/profile.d/conda.sh /etc/profile.d/conda.sh

# but for non-login shells, still need to source this file
cat << "END_ROOT" >> /root/.bashrc

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
END_ROOT


cat << "END_VAGRANT" >> /home/vagrant/.bashrc

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
END_VAGRANT

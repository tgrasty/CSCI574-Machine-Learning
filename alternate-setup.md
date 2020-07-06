# Alternate Getting Started Instructions

If at all possible you should use the required JupyterHub vagrant virtual box
environment for class assingments and lectures.  This standard server setup
uses the Anaconda Python 3 distribution, and installs a full Python data science
stack inside of a Ubuntu 20.04 container.  A few additional tools like
`ffmpeg` and `graphviz` are also installed and made available for use in the
dev environment.

However, if you already have a working Python3 data science stack available,
or have troubles setting up the VirtualBox/Vagrant virtual server, you can
install the Anaconda distribution directly by hand on your system and set up
a JupyterLab server to run.  The following instructions are older instructions
for setting this up for the class.  Only use them after consluting with your
instructor and first trying to get the official JupyterHub vagrant box to work
on your system.

## Getting Started (Alternate Instructions)


Before the end of the first day of class, you need to get a working
Python distribution installed on your personal machine, and you need
to clone a copy of our class repository.  The following video should
help you in getting started:

- [Getting Started (Windows)](http://derekharter.com/class/videos/w00-class-python-setup-windows.webm)
- [Getting Started (MacOS / Linux)](http://derekharter.com/class/videos/w00-class-python-setup-macos.webm)

In order to do the class lectures and readings, you need to be able to
run and execute [Jupyter notebooks](https://www.dataquest.io/blog/jupyter-notebook-tutorial/).
In general, you need to complete the following 4 steps.

1. Download and install Anaconda Python Distribution that includes support for running Jupyter notebooks and using the Scientific Python Library compute stack.
2. Download and install a git client on your machine (if one is not
   already available).
3. Clone the class repository using `git clone`
4. Test out Python, running Jupyter notebooks, and that you can access
   and execute the course lecture notebooks with your system setup.

### Download and Install a Python Distribution

For this course we recommend using a Python scientific distribution.
We recommend using the Anaconda distribution:

- [Anaconda Distribution Download](https://www.anaconda.com/products/individual)


Whether you are using Windows, Mac or Linux, the linked to installers
should work for you.  We are using Python version 3.x for this class,
so please download and install the 3.x version of the installer.

### Download and Install Git Client

For Linux or Mac users, if git is not already installed you can probably
most easily use the standard package management systems of your OS to
install git.  For Windows, or to install it by hand on Linux/Mac, you
should get the package from the SCM git site:

- [Git download package](https://git-scm.com/downloads)

### Clone Class Repository

The class repository for our Introduction to Computational Science class
can be found at: https://bitbucket.org/dharter/ml-python-class

To clone the repository from a dos terminal or command line prompt, once
git is installed, do the following

    > git clone https://bitbucket.org/dharter/ml-python-class.git


### Test Python, Jupyter and Class Notebooks

There are multiple ways to start up a Jupyter lab server on your
system once you have Python and Jupyer installed.  From a dos prompt
or the command line, first change to the directory where you cloned
your class repository into, and then execute the command

    > jupyter lab

This will start up a JupyterLab server, and on most systems will open
up a file browser inside of your default web browser, in order for
you to browse and select iPython notebooks for execution.

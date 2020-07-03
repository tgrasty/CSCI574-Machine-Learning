#!/usr/bin/env bash

# make sure initially everything up to date
apt-get update
apt-get dist-upgrade -y
apt-get autoremove

# set timezone
timedatectl set-timezone America/Chicago

# install gnu gcc/g++ development stack, make, git, etc.
apt-get install -y build-essential make git python3 net-tools

# make a symbolic link in vagrant user home directory to the class repository
ln -s /vagrant  /home/vagrant/ml-python-class

# change hostname so we are reminded when logging in and at terminal what environemtn we are on
hostname ml-python-class
echo "ml-python-class" > /etc/hostname
sed -i "s|ubuntu-focal|ml-python-class|g" /etc/hosts

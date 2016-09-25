#!/bin/bash

# http://www.getdeb.net/welcome/

echo "filezilla Starting installation"

echo "Installing GPG Key"
# Download the key and then use apt to install GPG key.
wget -q -O- http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -

echo "Adding getdeb repository"
# Add getdeb Repository
sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu xenial-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list'

echo "Updating packages"
# Update your package manager & Upgrade.
sudo apt update && sudo apt -y upgrade

# Install filezilla
# https://filezilla-project.org/
sudo apt install -y filezilla
echo "filezilla Installation Done"
#!/bin/bash

# http://www.getdeb.net/welcome/

echo "Installing GPG Key"
# Download the key and then use apt to install GPG key.
wget -q -O- http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -

echo "Adding getdeb repository"
# Add getdeb Repository
sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu xenial-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list'

echo "Updating packages"
# Update your package manager & Upgrade.
sudo apt update && sudo apt -y upgrade

echo "filezilla Starting installation"
# Install filezilla
# https://filezilla-project.org/
sudo apt install -y filezilla
echo "filezilla Installation Done"

echo "gnome-connection-manager Starting installation"
# Install gnome-connection-manager
# http://kuthulu.com/gcm/
sudo apt install -y gnome-connection-manager
echo "gnome-connection-manager Installation Done"

echo "pac Starting installation"
# Install Perl Auto Connector(pac)
# https://sites.google.com/site/davidtv/
sudo apt install -y pac
echo "pac Installation Done"
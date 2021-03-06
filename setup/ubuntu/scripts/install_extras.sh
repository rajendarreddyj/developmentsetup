#!/bin/bash

echo "Updating packages"
# Update your package manager & Upgrade.
sudo apt update && sudo apt -y upgrade

echo "fslint Starting installation"
# Install fslint
# http://www.pixelbeat.org/fslint/
sudo apt install -y fslint
echo "fslint Installation Done"

echo "localepurge Starting installation"
# Intall localepurge
# http://manpages.ubuntu.com/manpages/xenial/man8/localepurge.8.html
sudo apt install -y localepurge
echo "localepurge Installation Done"

echo "libpadwalker-perl Starting installation"
# Intall libpadwalker-perl
# http://www.epic-ide.org/faq.php
# https://code.activestate.com/ppm/PadWalker/
# https://perlmaven.com/padwalker
sudo apt install libpadwalker-perl
echo "libpadwalker-perl Installation Done"

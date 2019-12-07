#!/bin/bash

## The whole code is adapted from:
##     https://i3wm.org/docs/repositories.html

cd /tmp

apt_helper=/usr/lib/apt/apt-helper
url=https://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2019.02.01_all.deb
digest=SHA256:176af52de1a976f103f9809920d80d02411ac5e763f695327de9fa6aff23f416

# Install keyring
$apt_helper download-file $url keyring.deb $digest
sudo dpkg -i ./keyring.deb

# Add repo
source /etc/lsb-release
repo="deb https://debian.sur5r.net/i3/ $DISTRIB_CODENAME universe"
echo $repo | sudo tee /etc/apt/sources.list.d/sur5r-i3.list

#!/bin/bash -e

. ./compile_helpers.sh

cd_local_src
clone_or_update i3-battery-popup https://github.com/rjekker/i3-battery-popup
sudo cp i3-battery-popup/i3-battery-popup /usr/local/bin/

#!/bin/bash

source ./desktop-env/add_user_unit.sh ./desktop-env/mega/mega.service
systemctl --user enable mega

echo
echo Please login to mega below and establish sync!

exec mega-cmd

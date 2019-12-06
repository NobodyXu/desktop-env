#!/bin/bash

user_unit=~/.config/systemd/user/

mkdir -p $user_unit
cp ./desktop-env/mega/mega.service $user_unit

systemctl --user enable mega

echo
echo Please login to mega below and establish sync!

exec mega-cmd

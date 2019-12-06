#!/bin/bash

user_unit=~/.config/systemd/user/

mkdir -p $user_unit
cp mega.service $user_unit

systemctl --user enable mega.service

echo
echo Please login to mega below and establish sync!

exec mega-cmd

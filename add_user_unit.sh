#!/bin/bash

[ -z "$1" ] && (echo Fatal error in $0 !; exit 1)

user_units=~/.config/systemd/user/
mkdir -p $user_units
exec cp $1 $user_units

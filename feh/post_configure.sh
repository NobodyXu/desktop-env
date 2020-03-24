#!/bin/bash

wallpapers=~/Pictures/Wallpapers/

mkdir -p $wallpapers

# Add systemd timer that automatically changes background
cp ./desktop-env/feh/update-desktop-background.* ~/.config/systemd/user/

cp ./desktop-env/feh/space.jpg $wallpapers/

# Symlink system-provided backgrounds into wallpapers
cd $wallpapers
for pic in /usr/share/backgrounds/*/*; do
    ln -s $pic
done

#!/bin/bash

wallpapers=~/Pictures/Wallpapers/

mkdir -p $wallpapers

cp ./desktop-env/feh/space.jpg $wallpapers/

# Symlink system-provided backgrounds into wallpapers
cd $wallpapers
for pic in /usr/share/backgrounds/*/*; do
    ln -s $pic
done

# Add cron job that automatically changes background
(crontab -l; echo '0 * * * * feh --randomize --bg-fill ~/Pictures/Wallpapers/*') | crontab -

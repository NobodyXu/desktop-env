#!/bin/sh

i3lock-fancy &
while pgrep i3lock-fancy >/dev/null; do
    sleep 5m;
    xset dpms force off
done

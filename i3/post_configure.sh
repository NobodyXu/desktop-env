#!/bin/bash

# Post-configure for i3
i3_conf=~/.config/i3/config

if [ -e $i3_conf ]; then
    mv $i3_conf ${i3_conf}.`date -u +%F`.bk
fi

ln `realpath ./desktop-env/i3/i3-config` $i3_conf

# Post-configure for dmenu
## The optimized dmenu_run is required for my i3 config to work
sudo cp ./desktop-env/i3/dmenu_run /usr/local/bin/

## Install /bin/bash as default shell due to the fact that:
##  - Executing /bin/sh -c "..." with default shell creates at least 2 processes
##  - Executing the same with /bin/bash creates only 1.
sudo ln -sf /bin/bash /bin/sh

# Post-configure for i3blocks
i3blocks_conf=~/.config/i3blocks/config

if [ -e $i3blocks_conf ]; then
    mv $i3blocks_conf ${i3blocks_conf}.`date -u +%F`.bk
fi

ln `realpath ./desktop-env/i3/i3blocks-config` $i3blocks_conf

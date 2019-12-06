#!/bin/bash

source ./desktop-env/add_user_unit.sh ./desktop-env/cups/cups-config.service
systemctl --user enable cups-config
systemctl --user start cups-config

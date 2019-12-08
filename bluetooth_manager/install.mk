install_desktop-env: de-install_bluetooth_manager

de-install_bluetooth_manager: de-install_i3
	@echo Install basic facilities
	sudo $(apt) install -y bluetooth bluez bluez-tools rfkill
	@echo Make sure bluetooth device is not blocked
	sudo rfkill list bluetooth | tail -n +2 | grep -q 'yes' && sudo rfkill unblock bluetooth || echo Not blocked
	@echo Make sure bluetooth service is active
	sudo service bluetooth start
	@echo Install interface
	sudo $(apt) install -y blueman
	$(de-add_user_unit) ./desktop-env/bluetooth_manager/blueman-applet.service
	systemctl --user enable blueman-applet
	systemctl --user start blueman-applet

install_desktop-env: de-install_network_manager

de-install_network_manager: de-install_i3
	sudo $(apt) install -y network-manager
	$(de-add_user_unit) ./desktop-env/network_manager/nm-applet.service
	systemctl --user start nm-applet

install_desktop-env: de-install_i3-battery-popup

de-install_i3-battery-popup:
	sudo $(apt) install -y tk
	./desktop-env/i3-battery-popup/install.sh

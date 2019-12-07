install_desktop-env: de-install_amixer

de-install_amixer:
	sudo $(apt) install -y alsa-base alsa-utils

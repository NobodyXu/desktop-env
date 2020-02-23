install_desktop-env: de-install_shutter

de-install_shutter:
	sudo add-apt-repository -y ppa:linuxuprising/shutter
	sudo $(apt) install -y shutter

install_desktop-env: de-install_cups

de-install_cups:
	sudo $(apt) install -y cups
	sudo systemctl enable cups
	./desktop-env/cups/post_configure.sh

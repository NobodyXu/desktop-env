install_desktop-env: de-install_feh

de-install_feh:
	sudo $(apt) install -y feh
	./desktop-env/feh/post_configure.sh

install_desktop-env: de-install_i3

de-i3_add_repo:
	# Add repo to use newest i3bar that support transparency
	./desktop-env/i3/add_i3_repo.sh
	sudo $(apt) update

de-install_i3: de-i3_add_repo de-install_feh de-install_amixer de-install_xbacklight
	sudo $(apt) install -y i3 i3lock-fancy i3blocks bash imagemagick
	./desktop-env/i3/post_configure.sh

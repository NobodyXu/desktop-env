install_desktop-env: de-install_mega

de-add_mega_repo: install_apt-add-repository
	sudo ./desktop-env/mega/add_mega_repo.sh
	sudo $(apt) update

de-install_mega: de-add_mega_repo
	sudo $(apt) install -y megacmd
	./desktop-env/mega/post_configure.sh

install_desktop-env: de-install_mega

de-add_mega_repo: install_curl
	./desktop-env/mega/add_mega_repo.sh
	$(apt) update

de-install_mega: de-add_mega_repo
	$(apt) install -y megacmd
	$(su_orig) ./desktop-env/mega/post_configure.sh

install_desktop-env: de_install_mega

de_add_mega_repo: install_curl
	./desktop-env/mega/add_mega_repo.sh
	$(apt) update

de_install_mega: de_add_mega_repo
	$(apt) install -y megacmd
	$(su_orig) ./desktop-env/mega/post_configure.sh

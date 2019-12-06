install_desktop-env: desktop-env_install_mega

desktop-env_add_mega_repo: install_curl
	./desktop-env/mega/add_mega_repo.sh
	$(apt) update

desktop-env_install_mega: desktop-env_add_mega_repo
	$(apt) install -y megacmd
	$(su_orig) ./desktop-env/mega/post_configure.sh

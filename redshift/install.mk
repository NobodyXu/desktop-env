install_desktop-env: de-install_redshift

de-install_redshift:
	sudo $(apt) install -y redshift geoclue-2.0
	$(de-add_user_unit) ./desktop-env/redshift/redshift.service
	systemctl --user enable redshift
	systemctl --user start redshift

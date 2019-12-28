install_desktop-env: de-install_cups

de-install_cups:
	sudo $(apt) install -y cups
				-e "s/Require user @SYSTEM"
	sudo sed -i -e "s/Require user @SYSTEM/Require user @SYSTEM ${USER}/g" \
				-e "s/Require user @OWNER @SYSTEM/Require user @OWNER @SYSTEM ${USER}/g" \
				/etc/cups/cupsd.conf
	sudo systemctl enable cups
	./desktop-env/cups/post_configure.sh

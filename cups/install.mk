install_desktop-env: de-install_cups

de-install_cups:
	sudo $(apt) install -y cups
				-e "s/Require user @SYSTEM"
	sudo sed -i -e "s/Require user @SYSTEM/Require user @SYSTEM ${USER}/g" \
				-e "s/Require user @OWNER @SYSTEM/Require user @OWNER @SYSTEM ${USER}/g" \
				/etc/cups/cupsd.conf
	sudo systemctl enable cups
	# Restart service so that:
	#     - If the service is running (installed), it will be restarted;
	#     - If not, it will be started.
	sudo systemctl restart cups
	./desktop-env/cups/post_configure.sh

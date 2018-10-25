#!/bin/bash

clear

EXPLAINTASK

CONFIRMATION

if [[ ${REPLY} =~ ^[Yy]$ ]]; then

	clear
	sudo rm -r /opt/Gooby
	sudo git clone -b master https://github.com/TechPerplexed/Gooby /opt/Gooby
	sudo chmod +x -R /opt/Gooby/install
	sudo chmod +x -R /opt/Gooby/menus
	sudo rsync -a /opt/Gooby/install/goopby /bin
	sudo chmod 755 /bin/gooby

	clear

	TASKCOMPLETE

else

	CANCELTHIS

fi

PAUSE

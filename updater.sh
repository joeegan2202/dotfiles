#!/bin/bash
# move timer and service file

if [ "$(whoami)" == "root" ]; then
	echo "Sorry, you must not be root to install the updater script"
	exit 1
fi

sudo cp updater/dotfile-updater /bin/dotfile-updater
user=$USER
sudo sed -i -e "s@>@${PWD}@g" /bin/dotfile-updater
sudo sed -i -e "s@<@$user@g" /bin/dotfile-updater
sudo systemctl link updater/updater.timer
sudo systemctl link updater/updater.service
sudo systemctl daemon-reload
sudo systemctl enable updater.timer
sudo systemctl start updater.timer

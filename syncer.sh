#!/bin/bash
# move timer and service file

if [ "$(whoami)" == "root" ]; then
	echo "Sorry, you must not be root to install the syncer script"
	exit 1
fi

sudo cp syncer/syncer-exec /bin/syncer-exec
user=$USER
currpath=${PWD}
cd ~/
sudo sed -i -e "s@>@${PWD}@g" /bin/syncer-exec
cd $currpath
sudo sed -i -e "s@<@$user@g" /bin/syncer-exec
sudo systemctl link syncer/syncer.timer
sudo systemctl link syncer/syncer.service
sudo systemctl daemon-reload
sudo systemctl enable syncer.timer
sudo systemctl start syncer.timer

#!/bin/bash
if [ "$(whoami)" != "root" ]; then
	echo "Sorry, you must be root to install necessary packages!"
	exit 1
fi
apt install -y i3
apt install -y sxiv
apt install -y ranger
apt install -y build-essential git cmake cmake-data pkg-config libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev
apt install -y compton
apt install -y cmus
apt install -y fonts-inconsolata
apt install -y rxvt-unicode-256color
apt install -y qutebrowser
apt install -y firefox
apt install -y feh
apt install -y htop
apt install -y neovim

cd ~/
git clone https://github.com/jaagr/polybar
mkdir polybar/build
cd polybar/build
cmake ../
make
sudo make install

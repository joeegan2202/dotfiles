#!/bin/bash

if [ "$(whoami)" == "root" ]; then
	echo "Sorry, you must not be root to install the dotfiles"
	exit 1
fi

sudo pacman -Syyui --noconfirm

<<<<<<< HEAD
sudo pacman -S git base-devel go --noconfirm
=======
sudo pacman -S git base-devel go
>>>>>>> c1369c5afc7f95c0275012f261bb160e56332da3

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ../

yay -S polybar i3-gaps neovim zsh oh-my-zsh-git

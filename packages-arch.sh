#!/bin/bash

if [ "$(whoami)" != "root" ]; then
	echo "Sorry, you must be root to install the dotfiles"
	exit 1
fi

pacman -Syyui --noconfirm

pacman -S git makepkg go

git clone https://github.com/jguer/yay
cd yay
makepkg -si
cd ../

yay -S polybar i3-gaps neovim zsh oh-my-zsh-git

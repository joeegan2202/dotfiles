#!/bin/bash

if [ "$(whoami)" == "root" ]; then
	echo "Sorry, you must not be root to install the dotfiles"
	exit 1
fi

sudo pacman -Syyui --noconfirm

sudo pacman -S git base-devel go --noconfirm

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ../

yay -S polybar i3-gaps neovim zsh oh-my-zsh-git vim-plug tmux w3m ranger oh-my-zsh-powerline-theme network-manager network-manager-applet

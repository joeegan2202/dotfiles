#!/bin/bash
git pull

if [ "$(whoami)" == "root" ]; then
	echo "WARNING: You are installing for root. If you wish to install for another user do not run with 'sudo'."
fi

if [ "$(pwd)" != "/home/$(whoami)/dotfiles" ]; then
	echo "You must create the git folder in your home directory!"
	exit 1
fi

# rm ~/.config/nvim/init.vim
# mkdir -p ~/.config/nvim
# cp ./init.vim ~/.config/nvim/
# rm ~/.config/i3/config
# mkdir -p ~/.config/i3/
# cp ./i3.config ~/.config/i3/config
# rm ~/.zshrc
# cp ./zsh.config ~/.zshrc
sudo mkdir -p ~/.config/nvim ~/.config/i3 ~/.config/polybar ~/.config/ranger ~/.config/alacritty
sudo ln -sf ~/dotfiles/neovim/neovim.config ~/.config/nvim/init.vim
sudo ln -sf ~/dotfiles/neovim/coc-settings.json ~/.config/nvim/coc-settings.json
sudo ln -sf ~/dotfiles/zsh/zsh.config ~/.zshrc
sudo ln -sf ~/dotfiles/i3/i3.config ~/.config/i3/config
sudo ln -sf ~/dotfiles/polybar/polybar.config ~/.config/polybar/config
sudo ln -sf ~/dotfiles/Xresources/Xresources.config ~/.Xresources
sudo ln -sf ~/dotfiles/ssh/ssh.config ~/.ssh/config
sudo ln -sf ~/dotfiles/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

sudo ln -sf ~/dotfiles/ranger/commands_full.py ~/.config/ranger/commands_full.py
sudo ln -sf ~/dotfiles/ranger/commands.py ~/.config/ranger/commands.py
sudo ln -sf ~/dotfiles/ranger/rc.conf ~/.config/ranger/rc.conf
sudo ln -sf ~/dotfiles/ranger/rifle.conf ~/.config/ranger/rifle.conf
sudo ln -sf ~/dotfiles/ranger/scope.sh ~/.config/ranger/scope.sh


sudo xrdb ~/.Xresources

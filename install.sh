#!/bin/bash
git pull

if [ "$(whoami)" == "root" ]; then
	echo "Sorry, you must not be root to install the dotfiles"
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
sudo mkdir -p ~/.config/nvim ~/.config/i3 ~/.config/polybar
sudo ln -sf ~/dotfiles/neovim/neovim.config ~/.config/nvim/init.vim
sudo ln -sf ~/dotfiles/zsh/zsh.config ~/.zshrc
sudo ln -sf ~/dotfiles/i3/i3.config ~/.config/i3/config
sudo ln -sf ~/dotfiles/polybar/polybar.config ~/.config/polybar/config
sudo ln -sf ~/dotfiles/Xresources/Xresources.config ~/.Xresources

sudo ln -sf ~/dotfiles/ranger/commands_full.py ~/.config/ranger/commands_full.py
sudo ln -sf ~/dotfiles/ranger/commands.py ~/.config/ranger/commands.py
sudo ln -sf ~/dotfiles/ranger/rc.conf ~/.config/ranger/rc.conf
sudo ln -sf ~/dotfiles/ranger/rifle.conf ~/.config/ranger/rifle.conf
sudo ln -sf ~/dotfiles/ranger/scope.sh ~/.config/ranger/scope.sh


sudo xrdb ~/.Xresources

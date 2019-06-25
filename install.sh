#!/bin/bash
git pull

if [ "$(whoami)" != "root" ]; then
	echo "Sorry, you must be root to install the dotfiles"
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
mkdir -p ~/.config/nvim ~/.config/i3 ~/.config/polybar
ln -sf ~/dotfiles/neovim/neovim.config ~/.config/nvim/init.vim
ln -sf ~/dotfiles/zsh/zsh.config ~/.zshrc
ln -sf ~/dotfiles/i3/i3.config ~/.config/i3/config
ln -sf ~/dotfiles/polybar/polybar.config ~/.config/polybar/config

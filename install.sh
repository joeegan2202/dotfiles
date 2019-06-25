#!/bin/bash
git pull
# rm ~/.config/nvim/init.vim
# mkdir -p ~/.config/nvim
# cp ./init.vim ~/.config/nvim/
# rm ~/.config/i3/config
# mkdir -p ~/.config/i3/
# cp ./i3.config ~/.config/i3/config
# rm ~/.zshrc
# cp ./zsh.config ~/.zshrc
mkdir -p ~/.config/nvim ~/.config/i3
ln -sf neovim/init.vim ~/.config/nvim/init.vim
ln -sf zsh/zsh.config ~/.zshrc
ln -sf i3/i3.config ~/.config/i3/config

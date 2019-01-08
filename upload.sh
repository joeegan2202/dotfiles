#!/bin/bash
rm ./init.vim
cp ~/.config/nvim/init.vim ./
rm ./i3.config
cp ~/.config/i3/config ./i3.config
rm ./zsh.config
cp ~/.zshrc ./zsh.config
git add .
git commit
git push

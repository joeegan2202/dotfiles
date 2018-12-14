#!/bin/bash
git pull
mkdir ~/.config/nvim
cp ./init.vim ~/.config/nvim/
mkdir ~/.vim
cp -r ./plugins ~/.vim/

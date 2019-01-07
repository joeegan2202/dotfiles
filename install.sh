#!/bin/bash
git pull
rm ~/.config/nvim/init.vim
mkdir ~/.config/nvim
cp ./init.vim ~/.config/nvim/

#!/bin/bash
git pull
rm -rf ~/.config/nvim/*
rm -rf ~/.vim/*
mkdir ~/.config/nvim
cp ./init.vim ~/.config/nvim/
mkdir ~/.vim
cp -r ./plugins ~/.vim/

#!/bin/bash
cp ~/.config/nvim/init.vim ./
cp -r ~/.vim/plugins ./
git add .
git commit
git push

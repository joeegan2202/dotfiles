#!/bin/bash
rm ./init.vim
cp ~/.config/nvim/init.vim ./
git add .
git commit
git push

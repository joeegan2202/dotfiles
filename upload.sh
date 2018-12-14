#!/bin/bash
mkdir ./archive
rm -rf ./archive/*
mv ./plugins ./archive
mv ./init.vim ./archive
cp ~/.config/nvim/init.vim ./
cp -r ~/.vim/plugins ./
git add *
git commit
git push

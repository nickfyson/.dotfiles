#!/bin/sh

# install Plug package manager for vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install all the vim bundles
vim +PlugUpdate +qall

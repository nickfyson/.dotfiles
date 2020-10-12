#!/bin/sh

# install neobundle package manager for vim
# bash -c "`curl -fsSL https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh`"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install all the vim bundles
vim +PlugUpdate +qall

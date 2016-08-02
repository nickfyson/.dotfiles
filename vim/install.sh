

if [ "$(uname)" == "Darwin" ]; then
    brew install macvim --override-system-vim
    brew install -y cmake
fi

if [ "$(uname)" == "Linux" ]; then

    if hash apt-get 2>/dev/null; then
        apt-get install -y vim-nox
        apt-get install -y cmake
    elif hash yum 2>/dev/null; then
        yum install -y vim-nox
        yum install -y cmake
    fi

fi

# install neobundle package manager for vim
bash -c "`curl -fsSL https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh`"

# overwrite the home directory vimrc with sourcing of the .dotfiles version
echo 'source '$DOTFILEDIR'/vim/vimrc' >> $HOME/.vimrc

# install all the vim bundles
vim +NeoBundleInstall +qall


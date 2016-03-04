
# symbolically link the .bashrc file
ln -sfv $HOME/.dotfiles/shell/bashrc $HOME/.bashrc
# for cross-platform compatibility, we also create a .bash_profile that
# sources from .bashrc
echo 'if [ -f ~/.bashrc ]; then source ~/.bashrc; fi' > $HOME/.bash_profile

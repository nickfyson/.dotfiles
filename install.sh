
# symbolically link the .bashrc file
echo 'if [ -f ~/.dotfiles/master_bashrc.sh ]; then source ~/.dotfiles/master_bashrc.sh; fi' > $HOME/.bashrc
# for cross-platform compatibility, we also create a .bash_profile that
# sources from .bashrc
echo 'if [ -f ~/.bashrc ]; then source ~/.bashrc; fi' > $HOME/.bash_profile

source $HOME/.bashrc

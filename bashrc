
# define custom prompt
export PS1="\[\e[34;1m\]\h \[\e[0;31m\]\W\[\e[m\] ☕  "


# set default editor
export EDITOR='vim'

# customize the use of colours on the terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced


# customise a couple of standard command line utlities
alias lf='ls -lg'
alias rm='rm -i'


for BASHRCFILE in `find $DOTFILEDIR -mindepth 2 -name "bashrc"`
do
    [ -f "$BASHRCFILE" ] && source "$BASHRCFILE"
done

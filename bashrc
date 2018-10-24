
# define custom prompt
export PS1="\[\e[34;1m\]\h \[\e[0;31m\]\W\[\e[m\] ☕  "
# export PS1="\[\e[34;1m\]\h \[\e[0;31m\]\W\[\e[m\] "

# bind the arrow keys so that they can be used to search the history
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'
bind '"\e[C":forward-char'
bind '"\e[D":backward-char'

# make the history huge so there's more to search
export HISTSIZE=1000000
export HISTFILESIZE=1000000000

# set default editor
export EDITOR='vim'

# customize the use of colours on the terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced


# customise a couple of standard command line utlities
alias lf='ls -lg'
alias rm='rm -i'

alias ll="ls -lahL"
alias con="tail -40 -f /var/log/system.log"

for BASHRCFILE in `find $DOTFILEDIR -mindepth 2 -name "bashrc"`
do
    [ -f "$BASHRCFILE" ] && source "$BASHRCFILE"
done

lips() {
    local ip=`ifconfig en0 | grep "inet " | grep -v 127.0.0.1 | awk '{print $2}'`
    local locip extip

    [ "$ip" != "" ] && locip=$ip || locip="inactive"

    ip=`dig +short myip.opendns.com @resolver1.opendns.com`
    [ "$ip" != "" ] && extip=$ip || extip="inactive"

    printf '%11s: %s\n%11s: %s\n' "Local IP" $locip "External IP" $extip
}

export PIPENV_VENV_IN_PROJECT=1


if ! hash tmux 2>/dev/null; then

    if [ "$(uname)" == "Darwin" ]; then
        brew install tmux
    fi

    if [ "$(uname)" == "Linux" ]; then

        if hash apt-get 2>/dev/null; then
            apt-get install -y tmux
        elif hash yum 2>/dev/null; then
            yum install -y tmux
        fi

    fi

fi

echo 'source '$DOTFILEDIR'/tmux/tmux.conf' > $HOME/.tmux.conf


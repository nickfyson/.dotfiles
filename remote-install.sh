
[[ -x `command -v wget` ]] && CMD="wget --no-check-certificate -O -"
[[ -x `command -v curl` ]] >/dev/null 2>&1 && CMD="curl -#L"

if [ -z "$CMD" ]; then
    echo "No curl or wget available. Aborting."
else
    echo "Installing dotfiles"
    mkdir -p "$HOME/.dotfiles" && \
    eval "$CMD https://github.com/nickfyson/dotfiles/tarball/master | tar -xzv -C ~/.dotfiles --strip-components=1"
    . "$HOME/.dotfiles/install.sh"
fi

# Credit : https://github.com/webpro/dotfiles.git

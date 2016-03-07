

#############################
## Snippet to cleverly find the folder containing this script!
# Credit : http://stackoverflow.com/a/246128/1240624
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DOTFILEDIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
#############################

# create
echo 'export DOTFILEDIR='$DOTFILEDIR > $HOME/.bashrc
# symbolically link the .bashrc file
echo 'source '$DOTFILEDIR'/bashrc' >> $HOME/.bashrc

# for cross-platform compatibility, we also create a .bash_profile that
# sources from .bashrc
echo 'source ~/.bashrc' > $HOME/.bash_profile


# find and setup package manager
if [ "$(uname)" == "Darwin" ]; then
    # TODO code to install homebrew essentials
    # and X-Code tools as required
    :
    export pkgman='brew'
fi
if [ "$(uname)" == "Linux" ]; then
    # apt-get update
    # apt-get upgrade -y
    if hash apt-get 2>/dev/null; then
        export pkgman='apt-get'
    elif hash yum 2>/dev/null; then
        export pkgman='yum'
    fi
fi

# basic installations to ensure tool are available
eval $pkgman install -y curl git

for INSTALLFILE in `find $DOTFILEDIR -mindepth 2 -name "install.sh"`
do
    source "$INSTALLFILE"
done

source $HOME/.bashrc

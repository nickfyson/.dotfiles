

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

# export DOTFILEDIR=`$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )`
echo 'export DOTFILEDIR='$DOTFILEDIR > $HOME/.bashrc
# symbolically link the .bashrc file
echo 'source '$DOTFILEDIR'/master_bashrc.sh' >> $HOME/.bashrc

# for cross-platform compatibility, we also create a .bash_profile that
# sources from .bashrc
echo 'source ~/.bashrc' > $HOME/.bash_profile

source $HOME/.bashrc

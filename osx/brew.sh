#!/bin/bash
#
# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install Bash 4
brew install bash

# install completion - enables it for Git
brew install bash-completion

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep

# Brew packages that I use alot.
#
brew install wget
brew install python
brew install fish
brew install caskroom/cask/brew-cask
#
# Some cask packages that I like.
#
# brew cask install dropbox
# brew cask install alfred
brew cask install google-chrome
# brew cask install inkscape
brew cask install xquartz
# brew cask install virtualbox
# brew cask install flux
brew cask install skype
# brew cask install transmission
# brew cask install spotify
# brew cask install slack
brew cask install transmit
# brew cask install iterm2
brew cask install vlc
brew cask install nvalt
brew cask install caffeine
brew cask install sublime-text
#
#Link alfred with apps
brew cask alfred link
#
#mackup
#
# pip install mackup
#
# mackup restore

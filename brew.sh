#!/bin/bash
#
#

# Check for brew
command -v brew >/dev/null 2>&1 || { echo >&2 "Homebrew not installed. Aborting."; exit 1; }

# Update and upgrade
brew tap caskroom/cask
brew update
brew upgrade
brew cask upgrade

# Core
brew install git
brew install wget
brew install mas
brew install mysql
brew install node@10

# Default Casks
brew cask install firefox-developer-edition
brew cask install the-unarchiver
brew cask install firefox
brew cask install google-chrome
brew cask install dropbox
brew cask install libreoffice
brew cask install skype
brew cask install whatsapp
brew cask install transmission
brew cask install alfred
brew cask alfred link
brew cask install appcleaner
brew cask install vlc
brew cask install iina
brew cask install bettertouchtool
brew cask install istat-menus

# Devel Casks
brew cask install sourcetree
brew cask install github-desktop
brew cask install slack
brew cask install sublime-text
brew cask install visual-studio-code
brew cask install webstorm
brew cask install iterm2
brew cask install java
brew cask install mamp
brew cask install codekit

# Containers
brew cask install docker
brew cask install vagrant
brew cask install vagrant-manager
brew cask install virtualbox

# Cleanup
brew cleanup
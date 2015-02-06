#!/usr/bin/env bash

# Install applications using Homebrew-Cask.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install applications
brew cask install alfred
brew cask install evernote
brew cask install handbrake
brew cask install steam
brew cask install armory
brew cask install fantastical
brew cask install handbrakecli
brew cask install sublime-text3
brew cask install avast
brew cask install filezilla
brew cask install iterm2
brew cask install virtualbox
brew cask install caffeine
brew cask install flux
brew cask install plex-home-theater
brew cask install vlc
brew cask install cheatsheet
brew cask install google-chrome
brew cask install sizeup
brew cask install dash
brew cask install google-drive
brew cask install skype

# Remove outdated versions from the caskroom.
brew cask cleanup

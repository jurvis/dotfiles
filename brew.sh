#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# iOS Dev Tools
brew install carthage

# Web Dev Stuff
brew install node
brew install python
brew install python3
brew install postgresql


# Install other useful binaries.
brew install ack
brew install tmux
brew install dark-mode
brew install imagemagick
brew install mercurial
brew install git
brew install nmap
brew install vim

## Utilities
brew install speedtest_cli
brew install ssh-copy-id

# Remove outdated versions from the cellar.
brew cleanup

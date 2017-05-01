#!/bin/bash

# Make certain useful folders.
mkdir -p $HOME/Workspace

# Install Homebrew.
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# Brew core packages.
brew install coreutils cmake

# Brew other unix commands.
brew install ack wget curl htop

# Brew GNU default commands.
brew install gnu-sed --with-default-names

# Brew dev packages.
brew install git python python3 ruby nvm

# Brew terminal plugins (requires .bash_profile).
brew install source-highlight bash-completion the_silver_searcher

# Lastly run brew doctor and fix package dependencies.
brew doctor
brew prune

# Install useful python third-party tools.
pip3 install tldr
pip3 install requests
pip3 install virtualenv

# Install useful nodejs third-party tools.
node install -g gulp mocha http-server eslint

# Download personal dotfiles from github.
wget https://raw.githubusercontent.com/codenameyau/dotfiles/master/shell/.ackrc -P ~
wget https://raw.githubusercontent.com/codenameyau/dotfiles/master/shell/.bash_alias -P ~
wget https://raw.githubusercontent.com/codenameyau/dotfiles/master/shell/.bash_extras -P ~
wget https://raw.githubusercontent.com/codenameyau/dotfiles/master/shell/.bash_profile -P ~
wget https://raw.githubusercontent.com/codenameyau/dotfiles/master/shell/.gitconfig -P ~
wget https://raw.githubusercontent.com/codenameyau/dotfiles/master/shell/.gitignore_global -P ~
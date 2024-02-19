#!/usr/bin/env bash
xcode-select ---install

sudo xcodebuild -license

git clone https://github.com/sonnyvesali/.dotfiles

if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew bundle --file ~/.dotfiles/brew/Brewfile

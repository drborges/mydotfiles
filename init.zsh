#!/usr/bin/env bash

mkdir -p ~/.config

brew install stow
brew install nvim
# Currently using the Mac packaagee but it would be ideal to
# be able to install it via brew.
# brew install ghostty

stow -t "$HOME" home

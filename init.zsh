#!/usr/bin/env bash

mkdir -p ~/.config

brew install stow
brew install docker
brew install zoxide
brew install nvim
brew install fzf
brew install bat
brew install btop
brew install ctop
brew install eza
brew install lazygit
brew install asdf
brew install iredis
brew install xo/xo/usql
brew install nushell

asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf plugin add python https://github.com/asdf-vm/asdf-ruby.git
asdf plugin add golang https://github.com/asdf-community/asdf-golang.git
asdf plugin update --all

asdf install

npm install -g tunnelmole

# Currently using the Mac packaagee but it would be ideal to
# be able to install it via brew.
# brew install ghostty

stow -t "$HOME" home

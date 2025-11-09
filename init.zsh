#!/usr/bin/env bash

mkdir -p ~/.config

brew install stow
brew install docker
brew install nvim
brew install bat
brew install btop
brew install ctop
brew install eza
brew install lazygit
brew install asdf
brew install iredis
brew install xo/xo/usql
brew install nushell
brew install dust
brew install difftastic
brew install yazi \
             ffmpeg \
             sevenzip \
             jq \
             poppler \
             fd \
             ripgrep \
             fzf \
             zoxide \
             resvg \
             imagemagick \
             font-symbols-only-nerd-font

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


# Shell completions

# eza
git clone https://github.com/eza-community/eza.git
echo 'export FPATH="$(which eza)/completions/zsh:$FPATH"' >> ~/.zshrc

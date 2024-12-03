#!/bin/bash

brew install jq
brew install node
brew install pipx
brew install ripgrep
brew install skhd
brew install stow
brew install wget
brew install yabai 

if [[ ! -d ~/nvim ]]; then
   wget -P ~ https://github.com/neovim/neovim/releases/latest/download/nvim-macos-arm64.tar.gz
   pushd ~
   tar xvzf nvim-macos-arm64.tar.gz
   rm nvim-macos-arm64.tar.gz
   mv nvim-macos-arm64 nvim
   popd
fi

pipx install bpytop
pipx install pipenv

stow -t $HOME -d machine/$(hostname) firefox
stow -t $HOME -d os/macos skhd
stow -t $HOME -d os/macos yabai
stow -t $HOME -d os/macos git
stow -t $HOME conda
stow -t $HOME nvim
stow -t $HOME tmux
stow -t $HOME zsh
stow -t $HOME scripts

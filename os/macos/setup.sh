#!/bin/bash

brew install stow
brew install yabai 
brew install skhd
brew install pipx
brew install ripgrep
brew install jq
brew install node

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

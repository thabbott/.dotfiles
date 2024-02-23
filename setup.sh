#!/usr/bin/env bash

sudo apt update
mkdir -p ~/.local/bin

# Utilities
sudo apt install stow
sudo apt install fd-find
ln -s $(which fdfind) ~/.local/bin/fd
sudo apt install fzf 
sudo apt install ripgrep

# Compilers
sudo apt install build-essential

# Shell
sudo apt install zsh

# Editor
if [[ ! -d ~/nvim-linux64 ]]; then
   wget -P ~ https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
   pushd ~
   tar xvzf nvim-linux64.tar.gz
   rm nvim-linux64.tar.gz
   popd
fi

# Packaging
sudo apt install pipx
if [[ ! -d ~/miniconda3 ]]; then
   mkdir -p ~/miniconda3
   wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
   bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
   rm -rf ~/miniconda3/miniconda.sh
fi

# LSPs
if [[ ! -f ~/.local/bin/lua-language-server ]]; then
   wget -P ~/.local https://github.com/LuaLS/lua-language-server/releases/download/3.7.4/lua-language-server-3.7.4-linux-x64.tar.gz
   pushd ~/.local
   tar xvzf lua-language-server-3.7.4-linux-x64.tar.gz
   rm lua-language-server-3.7.4-linux-x64.tar.gz
   popd
fi
pipx install pyright

# Install dotfiles
rm ~/.profile
stow conda
stow git
stow nvim
stow scripts
stow tmux
stow zsh

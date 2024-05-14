#!/bin/bash

sudo apt-get -y update && sudo apt-get -y install bat fish fd-find hub neovim ripgrep

mkdir -p ~/bin

cp /workspaces/.codespaces/.persistedshare/dotfiles/git/bin/* ~/bin/
cp -r /workspaces/.codespaces/.persistedshare/dotfiles/fish ~/.config/

# forgit
git clone https://github.com/wfxr/forgit.git ~/.forgit

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all

#!/bin/bash

sudo apt-get -y update && sudo apt-get -y install bat fish fd-find neovim ripgrep

mkdir -p ~/bin

ln -s /workspaces/.codespaces/.persistedshare/dotfiles/bash/bin/git-new ~/bin/git-new
ln -s /workspaces/.codespaces/.persistedshare/dotfiles/fish ~/.config/

# forgit
git clone https://github.com/wfxr/forgit.git ~/.forgit

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all

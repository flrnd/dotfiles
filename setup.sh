#!/bin/bash

mkdir -p ~/bin
ln -s /workspaces/.codespaces/.persistedshare/dotfiles/bash/bin/git-new ~/bin/git-new


# forgit
git clone https://github.com/wfxr/forgit.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/forgit


# fzf
git clone --depth 1 https://github.com/unixorn/fzf-zsh-plugin.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-zsh-plugin

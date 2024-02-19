#!/bin/bash

sudo apt-get -y install fish

mkdir -p ~/bin
ln -s /workspaces/.codespaces/.persistedshare/dotfiles/bash/bin/git-new ~/bin/git-new
ln -s /workspaces/.codespaces/.persistedshare/dotfiles/fish ~/.config/

# forgit
#git clone https://github.com/wfxr/forgit.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/forgit
git clone https://github.com/wfxr/forgit.git ~/.forgit
# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all

#echo "export FZF_BASE=~/.fzf" >> ~/.zshrc
#echo 'export PATH="$HOME/bin:$PATH"' >> ~/.zshrc

#sed -i 's/plugins=(git)/plugins=(git git-prompt forgit fzf)/' ~/.zshrc

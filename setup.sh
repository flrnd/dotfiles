#!/bin/zsh

mkdir -p ~/bin
ln -s /workspaces/.codespaces/.persistedshare/dotfiles/bash/bin/git-new ~/bin/git-new


# forgit
git clone https://github.com/wfxr/forgit.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/forgit

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all

echo "export FZF_BASE=~/.fzf" >> ~/.zshrc
echo 'export PATH="$HOME/bin:$PATH"' >> ~/.zshrc

sed -i 's/plugins=(git)/plugins=(git forgit fzf)/' ~/.zshrc

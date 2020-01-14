#fpath=(~/.zsh $fpath)

# load custom config
. ~/.zsh/alias.zsh
. ~/.zsh/completion.zsh
. ~/.zsh/directory.zsh
. ~/.zsh/functions.zsh
. ~/.zsh/git/git.zsh
. ~/.zsh/history.zsh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# asdf-vm
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# broot
. ~/.config/broot/launcher/bash/br

# prompt
. ~/.zsh/prompt/prompt.zsh


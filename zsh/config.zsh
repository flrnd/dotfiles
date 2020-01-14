#fpath=(~/.zsh $fpath)

# asdf-vm
. $HOME/.asdf/asdf.sh

# load custom config
. ~/.zsh/alias.zsh
. ~/.zsh/completion.zsh
. ~/.zsh/directory.zsh
. ~/.zsh/functions.zsh
. ~/.zsh/git/git.zsh
. ~/.zsh/history.zsh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# broot
. ~/.config/broot/launcher/bash/br

# prompt
. ~/.zsh/prompt/prompt.zsh


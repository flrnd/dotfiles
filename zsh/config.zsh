#fpath=(~/.zsh $fpath)

# load custom config
. ~/.zsh/alias.zsh
. ~/.zsh/directory.zsh
. ~/.zsh/functions.zsh
. ~/.zsh/git/git.zsh
. ~/.zsh/history.zsh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# asdf-vm
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# prompt
. ~/.zsh/prompt/prompt.zsh

# completions
fpath=(~/.zsh/completion $fpath)
autoload -U compinit && compinit

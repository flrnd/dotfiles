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

# broot
. ~/.config/broot/launcher/bash/br

# forgit
. ~/.zsh/plugins/forgit.plugin.zsh

# prompt
. ~/.zsh/prompt/prompt.zsh


# dircolors
eval "$(dircolors -b)"

# load custom config
. ~/.zsh/alias.zsh
. ~/.zsh/directory.zsh
. ~/.zsh/history.zsh
. ~/.zsh/completion/completion.zsh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# asdf-vm
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# prompt
. ~/.zsh/prompt/gitstatus/gitstatus.prompt.zsh

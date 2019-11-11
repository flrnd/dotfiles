# dircolors
OS_TYPE=$(uname 2>/dev/null)
if [[ $OS_TYPE = "Linux" ]]; then
	eval "$(dircolors -b)"
fi

fpath=(~/.zsh $fpath)

# load custom config
. ~/.zsh/alias.zsh
. ~/.zsh/directory.zsh
. ~/.zsh/git/git.zsh
. ~/.zsh/history.zsh
. ~/.zsh/completion/completion.zsh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# asdf-vm
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# prompt
. ~/.zsh/prompt/prompt.zsh

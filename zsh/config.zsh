# load custom config
. ~/.zsh/alias.zsh
. ~/.zsh/completion.zsh
. ~/.zsh/directory.zsh
. ~/.zsh/git/git.zsh
. ~/.zsh/history.zsh
. ~/.zsh/functions.zsh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# tilix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi

# forgit
. ~/.zsh/plugins/forgit.plugin.zsh

# prompt
. ~/.zsh/prompt/prompt.zsh


# load custom config
. ~/.zsh/alias.zsh
. ~/.zsh/git/git.zsh
. ~/.zsh/functions.zsh
. ~/.zsh/history.zsh

# tilix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi

# Load pluggins
. ~/.zsh/plugins/fzf.zsh
. ~/.zsh/plugins/forgit.zsh

# prompt
. ~/.zsh/prompt/prompt.zsh

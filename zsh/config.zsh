### Uncomment below for profiling
# zmodload zsh/zprof

# load custom config
. ~/.zsh/alias.zsh
. ~/.zsh/git/git.zsh
. ~/.zsh/functions.zsh

# tilix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi

# zinit
# . ~/.zsh/zinit/zinit.zsh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# prompt
. ~/.zsh/prompt/prompt.zsh

## Uncomment below for profiling
#zprof



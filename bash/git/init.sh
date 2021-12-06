if [ ! -f ~/.bash/git/git-prompt.sh  ]; then
   curl -fsSLO https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
fi

. ~/.bash/git/git-prompt.sh
export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="branch"
export PROMPT_COMMAND='__git_ps1 "\w" "\n\\\$ "'

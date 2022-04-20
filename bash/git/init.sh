if [ -f /etc/bash_completion.d/git-prompt.sh ]; then
	. /etc/bash_completion.d/git-prompt.sh
fi

export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="verbose"
export GIT_PS1_SHOWCOLORHINTS=true
export PROMPT_COMMAND='__git_ps1 "\w" "\n\\\$ "'

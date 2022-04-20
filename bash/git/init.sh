if [ -f /etc/bash_completion.d/git-prompt.sh ]; then
	. /etc/bash_completion.d/git-prompt.sh
fi

# prompt colors
blue=`tput setaf 4`
magenta=`tput setaf 5`
reset_color=`tput sgr0`

export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="verbose name"
export GIT_PS1_SHOWCOLORHINTS=true
export PROMPT_COMMAND='__git_ps1 "$blue\w$reset_color" "\n$magenta\$$reset_color "'

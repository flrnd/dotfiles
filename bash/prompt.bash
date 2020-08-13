source /usr/share/git-core/contrib/completion/git-prompt.sh
export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="branch"
export PROMPT_COMMAND='__git_ps1 "\[\033[01;34m\]\w\[\033[00m\]" "\n\[\033[01;35m\]>\[\033[00m\] "' # Git branch (relies on git-sh-prompt)


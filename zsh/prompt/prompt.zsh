GIT_PS1_SHOWUPSTREAM="verbose"
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_DESCRIBE_STYLE="branch"
GIT_PS1_SHOWCOLORHINTS=true

setopt PROMPT_SUBST ; precmd () { __git_ps1 "%n" ":%~$ " "|%s"  }
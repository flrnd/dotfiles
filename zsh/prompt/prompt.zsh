. ~/.zsh/prompt/gitstatus/gitstatus.prompt.zsh

PROMPT='%14F%$((-GITSTATUS_PROMPT_LEN-1))<…<%~%<<%f'   # light blue current working directory
PROMPT+='${GITSTATUS_PROMPT:+ $GITSTATUS_PROMPT}'      # git status
PROMPT+=$'\n'                                          # new line
PROMPT+='%F{%(?.5.196)}❯%f '

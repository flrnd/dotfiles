# GNU and BSD (macOS) ls flags aren't compatible
OS_TYPE=$(uname 2> /dev/null)
if [[ $OS_TYPE = "Linux" ]]; then
  eval "$(dircolors -b)"

 if (( $+commands[fdfind] )); then
    alias fd="fdfind"
 fi

 if (( $+commands[batcat] )); then
    alias cat="batcat"
 elif  (( $+commands[bat] )); then
    alias cat="bat"
 fi
else
  lsflags="-GF"
  export CLICOLOR=1
fi

# editor
alias vi="nvim"

# ls
if (( $+commands[exa] )); then
  lsflags="--git"
  LS_COMMAND="exa"
else
  lsflags="-Fh --color=auto"
  LS_COMMAND="ls"
fi

alias ls="$LS_COMMAND ${lsflags}"
alias la="$LS_COMMAND -a"
alias ll="$LS_COMMAND -al"
alias lr="$LS_COMMAND -lR"


# directories
alias cp="cp -i"
alias mv="mv -i"
alias rmf="rm -ivrf"
alias mkdir="mkdir -p"
alias less="less -R"

# git
alias gc="git commit -m"

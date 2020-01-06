# GNU and BSD (macOS) ls flags aren't compatible
OS_TYPE=$(uname 2> /dev/null)
if [[ $OS_TYPE = "Linux" ]]; then
  eval "$(dircolors -b)"
  lsflags="--color --group-directories-first -Fh"
  # this has nothing to do with ls, but to avoid
  # another if/else :P
  alias fd="fdfind"
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
alias ls="ls ${lsflags}"
alias la="ls -a"
alias ll="ls -al"
alias lr="ls -lR"
alias lt="ls -ltr"

# directories
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -iv"
alias rmf="rm -ivrf"
alias mkdir="mkdir -p"
alias less="less -R"

# git


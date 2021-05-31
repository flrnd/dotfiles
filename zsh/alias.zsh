# GNU and BSD (macOS) ls flags aren't compatible
OS_TYPE=$(uname 2> /dev/null)
if [[ $OS_TYPE = "Linux" ]]; then
  eval "$(dircolors -b)"
  lsflags="-GFh --color=auto"
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

# LS

if (( $+commands[exa] )); then
  lsflags="--git -F"
  LS_COMMAND="exa"
else
  LS_COMMAND="ls"
fi

alias ls="$LS_COMMAND ${lsflags}"
alias la="$LS_COMMAND -a"
alias ll="$LS_COMMAND -al"
alias lr="$LS_COMMAND -lR"
alias lt="du -sh * | sort -h"

# directories
alias cp="cp -i"
alias mv="mv -i"
alias rmf="rm -ivrf"
alias mkdir="mkdir -p"
alias less="less -R"
#alias df='df -h -x squashfs -x tmpfs -x devtmpfs'

# git
alias gc="git commit -m"

# other
alias 7zc="7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on"
alias composer="php ~/.local/bin/composer.phar"

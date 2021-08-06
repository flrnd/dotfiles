# GNU and BSD (macOS) ls flags aren't compatible
case $OSTYPE in
  linux*)
    eval "$(dircolors -b)"
    alias ls="ls -Fh --color=auto"
    ;;
  darwin*)
    alias ls="ls -GF"
    export CLICOLOR=1
    ;;
esac

# fdfind - ubuntu/debian
if command -v fdfind &> /dev/null; then
  alias fd="fdfind"
fi

# batcat - ubuntu/debian
if command -v batcat &> /dev/null; then
  alias cat="batcat"
fi

if  command -v bat &> /dev/null; then
    alias cat="bat"
fi

# editor
if command -v nvim &> /dev/null; then
  alias vi="nvim"
fi

# ls
alias la="ls -a"
alias ll="ls -al"
alias lr="ls -lR"
alias lt="du -sh * | sort -h"

# directories
alias cp="cp -i"
alias mv="mv -i"
alias rmf="rm -ivrf"
alias mkdir="mkdir -p"
alias less="less -R"

# git
alias gc="git commit -m"

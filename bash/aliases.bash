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

if  command -v bat &> /dev/null; then
    alias cat="bat"
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
alias gc="git commit --verbose"

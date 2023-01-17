# GNU and BSD (macOS) ls flags aren't compatible

case $OSTYPE in
    linux*)
        eval "$(dircolors -b)"
        lsflags="-GFh --color=auto"
        ;;
    darwin*)
        lsflags="-GF"
        export CLICOLOR=1
        ;;
esac

# fd / fdfind
# this is mostly for Debian and other distros
if (( $+commands[fdfind] )); then
    alias fd="fdfind"
fi

### bat
# Mac and most Linux
if  (( $+commands[bat] )); then
    alias cat="bat"
    alias bathelp='bat --plain --language=help'
    help() {
        "$@" --help 2>&1 | bathelp
    }
    export MANPAGER="sh -c 'col -bx | bat -l man -p'"
    export MANROFFOPT="-c"
    batdiff() {
        git diff --name-only --relative --diff-filter=d | xargs bat --diff
    }
fi

# Ubuntu / Debian
if (( $+commands[batcat] )); then
    alias cat="batcat"
fi

# editor
alias vi="nvim"

# ncdu
if (( $+commands[ncdu] )); then
    alias ncdu="ncdu -x --color dark"
fi

alias ls="ls ${lsflags}"
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
#alias df='df -h -x squashfs -x tmpfs -x devtmpfs'

# git
alias gc="git commit --verbose"

# other
alias 7zc="7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on"

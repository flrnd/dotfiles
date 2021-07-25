set -gx SHELL /usr/bin/fish
set -lx EDITOR nvim
set -lx VISUAL $EDITOR
set -lx GIT_EDITOR $EDITOR
set -lx PAGER "less"
set -lx FZF_DEFAULT_COMMAND "fd --type f --follow --hidden --exclude .git --exclude node_modules"
set -lx BAT_THEME "OneHalfDark"

# Abbreviations
abbr gcb "git checkout -b"
abbr gc "git commit -m"
abbr gp "git push"

# home bin
if test -e ~/bin
  set PATH ~/bin
end

# golang
if test -e /usr/local/go/
  set -lx GOPATH $HOME/go $GOPATH
  set PATH $GOPATH/bin $PATH
end

# Yarn
if test -e ~/.yarn/bin
  set PATH ~/.yarn/bin $PATH
end

#prompt
. ~/.config/fish/functions/prompt.fish

#asdf-vm
if test -e ~/.asdf
  . ~/.asdf/asdf.fish
end



set -lx EDITOR nvim
set -lx VISUAL $EDITOR
set -lx GIT_EDITOR $EDITOR
set -lx PAGER "less"
set -lx FZF_DEFAULT_COMMAND "fd --type f --follow --hidden --exclude .git --exclude node_modules"
set -lx BAT_THEME "OneHalfDark"

# home bin
if test -e ~/bin
  set PATH ~/bin
end

# golang
if test -e /usr/local/go/
  set -lx GOPATH /usr/local/go $GOPATH
  set PATH $GOPATH/bin $PATH
  set PATH $HOME/go/bin $PATH
end

# Haskell stack and others
if test -e ~/.local/bin
  set PATH ~/.local/bin $PATH
end

# Yarn
if test -e ~/.yarn/bin
  set PATH ~/.yarn/bin $PATH
end

#prompt
. ~/.config/fish/alias.fish
. ~/.config/fish/functions/prompt.fish
. ~/.asdf/asdf.fish


set -x EDITOR nvim
set -x VISUAL $EDITOR
set -x GIT_EDITOR $EDITOR
set -x PAGER "less"
set -x FZF_DEFAULT_COMMAND "fdfind --type f --follow --hidden --exclude .git --exclude node_modules"
set -x BAT_THEME "OneHalfDark"

# go support
if test -e /usr/local/go/
  set -x GOPATH $HOME/go $GOPATH
  set PATH $GOPATH/bin $PATH
end

if test -e ~/go/bin
  set PATH ~/go/bin $PATH
end

# Haskell stack and others
if test -e ~/.local/bin
  set PATH ~/.local/bin $PATH
end

# needed for emacs doom
if test -e ~/.emacs.d/bin
   set PATH ~/.emacs.d/bin $PATH
end

# Yarn
if test -e ~/.yarn/bin
  set PATH ~/.yarn/bin $PATH
end

#prompt
. ~/.config/fish/alias.fish
. ~/.config/fish/functions/prompt.fish
. ~/.asdf/asdf.fish


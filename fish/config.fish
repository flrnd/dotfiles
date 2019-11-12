set -lx EDITOR nvim
set -lx VISUAL $EDITOR
set -lx GIT_EDITOR $EDITOR
set -lx PAGER "less"
set -lx FZF_DEFAULT_COMMAND "fd --type f --follow --hidden --exclude .git --exclude node_modules"
set -lx BAT_THEME "OneHalfDark"

# Abbreviations
abbr ga "git add"
abbr gcb "git checkout -b"
abbr gm "git commit -m"
abbr gp "git push"
abbr gpoh "git push -u origin HEAD"
abbr gs "git status -s"

# home bin
if test -e ~/bin
  set PATH ~/bin
end

# golang
if test -e /usr/local/go/
  set -lx GOPATH $HOME/go $GOPATH
  set PATH $GOPATH/bin $PATH
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
. ~/.config/fish/functions/prompt.fish

#asdf-vm
. ~/.asdf/asdf.fish


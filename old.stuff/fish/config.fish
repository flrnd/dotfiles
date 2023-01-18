switch (uname)
    case Linux
        set -gx SHELL /usr/bin/fish
    case Darwin
        set -gx SHELL /usr/local/bin/fish
end
set -lx EDITOR nvim
set -lx VISUAL $EDITOR
set -lx GIT_EDITOR $EDITOR
set -lx PAGER less
set -lx FZF_DEFAULT_COMMAND "fd --type f --follow --hidden --exclude .git --exclude node_modules"
# set -lx BAT_THEME "OneHalfDark"

# Abbreviations
#abbr gcb "git checkout -b"
#abbr gc "git commit -m"
#abbr gp "git push"

# home bin
if test -e ~/bin
    set -gx PATH ~/bin $PATH
end

# local home bin
if test -e ~/.local/bin
    set -gx PATH ~/.local/bin $PATH
end

# golang
if test -e /usr/local/go/
  set -gx PATH /usr/local/go/bin $PATH
  set -gx GOROOT /usr/local/go
  set -gx GOPATH "$HOME/go"
end

# Local go
if test -e "$HOME/go"
  set -gx PATH "$HOME/go/bin" $PATH
end

# Rust
if test -e ~/.cargo/bin
    set -gx PATH ~/.cargo/bin $PATH
end

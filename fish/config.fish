switch (uname)
    case Linux
        set -gx SHELL /usr/bin/fish
    case Darwin
        set -gx SHELL /usr/local/bin/fish
end

set -gx EDITOR (which nvim)
set -gx VISUAL $EDITOR
set -gx GIT_EDITOR $EDITOR
set -gx FZF_DEFAULT_COMMAND "fd --type f --follow --hidden --exclude .git --exclude node_modules"

set -g fish_autosuggestion_enabled 0 # disable autosuggestions

# Abbreviations
#abbr gcb "git checkout -b"
#abbr gc "git commit -m"
#abbr gp "git push"

# home bin
if test -e ~/bin
    fish_add_path ~/bin
end

# local home bin
if test -e ~/.local/bin
    fish_add_path ~/.local/bin
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

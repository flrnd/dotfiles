set -g fish_autosuggestion_enabled 0 # disable autosuggestions
set -g fish_greeting ""

set -gx EDITOR (which nvim)
set -gx VISUAL $EDITOR
set -gx GIT_EDITOR $EDITOR

set -g MANPAGER "sh -c 'col -bx | bat -l man -p'"
set -g MANROFFOPT "-c"

# home bin
if test -e "$HOME/bin"
    set -gx PATH "$HOME/bin" $PATH
end

if test -e "$HOME/.local/bin"
    set -gx PATH "$HOME/.local/bin" $PATH
end

# go
if test -e "$HOME/go"
  set -gx PATH "$HOME/go/bin" $PATH
  set -gx GOPATH "$HOME/go"
  set -gx GOBIN "$HOME/go/bin"
end

# rust
if test -d "$HOME/.cargo"
  set -gx PATH "$HOME/.cargo/bin" $PATH
end

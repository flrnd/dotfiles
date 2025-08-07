set -gx FZF_DEFAULT_COMMAND "fd --type f --follow --hidden --exclude .git --exclude node_modules"

if test -e "$HOME/.local/share/fzf/shell/key-bindings.fish"
  source "$HOME/.local/share/fzf/shell/key-bindings.fish"
end

if test -e "/usr/share/fzf/shell/key-bindings.fish"
  source "/usr/share/fzf/shell/key-bindings.fish"
end

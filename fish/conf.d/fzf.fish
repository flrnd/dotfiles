set -gx FZF_DEFAULT_COMMAND "fd --type f --follow --hidden --exclude .git --exclude node_modules"

if test -e "$HOME/.fzf/shell/key-bindings.fish"
  source "$HOME/.fzf/shell/key-bindings.fish"
else if test -e "/usr/share/fish/vendor_functions.d/fzf_key_bindings.fish"
  source "/usr/share/fish/vendor_functions.d/fzf_key_bindings.fish"
end

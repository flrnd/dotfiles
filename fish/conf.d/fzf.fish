set -gx FZF_DEFAULT_COMMAND "fd --type f --follow --hidden --exclude .git --exclude node_modules"

if test -e "/usr/share/fish/vendor_functions.d/fzf_key_bindings.fish"
  source "/usr/share/fish/vendor_functions.d/fzf_key_bindings.fish"
end

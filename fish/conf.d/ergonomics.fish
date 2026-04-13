# ~/.config/fish/conf.d/ergonomics.fish

# --- forgit ---
set -l forgit_path /home/linuxbrew/.linuxbrew/opt/forgit/share/forgit/forgit.plugin.fish
if test -f $forgit_path
    source $forgit_path
end

# --- fzf ---
set -l fzf_path /home/linuxbrew/.linuxbrew/opt/fzf/shell/key-bindings.fish
if test -f $fzf_path
    source $fzf_path
end

# --- fzf defaults ---
if command -q fd
    set -gx FZF_DEFAULT_COMMAND "fd --type f --follow --hidden --exclude .git --exclude node_modules"
end

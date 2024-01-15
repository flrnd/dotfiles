export FZF_DEFAULT_COMMAND="fd --type f --hidden --follow --exclude .git --exclude node_modules"
export XDG_CONFIG_HOME="$HOME/.config"
export PATH="~/bin:$PATH"

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

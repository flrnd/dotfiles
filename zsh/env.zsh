EDITOR=nvim

# PROMPT='%n@%m %3~%(!.#.$)%(?.. [%?]) '

fpath=( "$HOME/.zsh/functions" "${fpath[@]}" )

export FZF_DEFAULT_COMMAND="fdfind --type f --hidden --follow --exclude .git --exclude node_modules"
export PATH="/usr/local/sbin:$PATH"

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# set PATH for go binaries
if [ -d "/usr/local/go" ] ; then
  PATH="/usr/local/go/bin:$PATH"
fi

if [ -d "$HOME/go" ]; then
  PATH="$HOME/go/bin:$PATH"
fi

# ruby rbenv
if [ -d "$HOME/.rbenv" ]; then
  PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

# rust cargo
if [ -d $HOME/.cargo ] ; then
  . $HOME/.cargo/env
fi


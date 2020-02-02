EDITOR=nvim

# PROMPT='%n@%m %3~%(!.#.$)%(?.. [%?]) '

fpath=( "$HOME/.zsh/functions" "${fpath[@]}" )

export FZF_DEFAULT_COMMAND="fdfind --type f --hidden --follow --exclude .git --exclude node_modules"

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# set PATH for go binaries
if [ -d "$HOME/.local/go" ] ; then
  PATH="$HOME/.local/go/bin:$PATH"
fi

if [ -d "$HOME/go" ]; then
  PATH="$HOME/go/bin:$PATH"
fi

if [ -d "$HOME/.rbenv" ]; then
  PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

# fnm
if [ -d "$HOME/.fnm" ]; then
  PATH=/home/flrn/.fnm:$PATH
  eval "`fnm env --multi`"
fi

if [ -d $HOME/.cargo ] ; then
  PATH="$HOME/.cargo/bin:$PATH"
fi


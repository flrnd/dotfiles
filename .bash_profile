test -z "$PROFILEREAD" && . /etc/profile || true

EDITOR=nvim

export FZF_DEFAULT_COMMAND="fd --type f --hidden --follow --exclude .git --exclude node_modules"
export XDG_CONFIG_HOME="$HOME/.config"
export PATH="/usr/local/sbin:$PATH"

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# set PATH for go binaries
if [ -d "/usr/local/go" ]; then
  PATH="/usr/local/go/bin:$PATH"
  GOROOT="/usr/local/go"
  GOPATH="$HOME/go"
fi

if [ -d "$HOME/go" ] ; then
  PATH="$HOME/go/bin:$PATH"
fi

# rust cargo
if [ -f "$HOME/.cargo/env" ] ; then
	. $HOME/.cargo/env
  PATH="$HOME/.cargo/bin:$PATH"
fi

# fnm
if [ -d "$HOME/.fnm" ]; then
  PATH=$HOME/.fnm:$PATH
  eval "`fnm env`"
fi

# npm global path
if command -v npm >/dev/null 2>&1 ; then
  if [ -d "$HOME/.npm-global" ] ; then
    PATH="$HOME/.npm-global/bin:$PATH"
  else
    mkdir ~/.npm-global
    npm config set prefix '~/.npm-global'
  fi
fi

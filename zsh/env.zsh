ZSH_DISABLE_COMPFIX=true
EDITOR=nvim

# PROMPT='%n@%m %3~%(!.#.$)%(?.. [%?]) '

fpath=( "$HOME/.zsh/functions" "${fpath[@]}" )

export FZF_DEFAULT_COMMAND="fd --type f --hidden --follow --exclude .git --exclude node_modules"
export PATH="/usr/local/sbin:$PATH"
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export HOMEBREW_NO_ANALYTIiCS=1 # MAC Homebrew
export BAT_THEME="Sublime Snazzy"

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

# asdf version manager
if [ -d "$HOME/.asdf" ] ; then
  . $HOME/.asdf/asdf.sh
  . $HOME/.asdf/completions/asdf.bash
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

# android studio & sdk
if [ -d "$HOME/Development/SDK/android" ]; then
  export ANDROID_HOME="$HOME/Development/SDK/android"
  export ANDROID_SDK_ROOT="$HOME/Development/SDK/android"
fi

if [ -d "$HOME/Development/android-studio" ]; then
  export JAVA_HOME="$HOME/Development/android-studio/jre"
  PATH="$HOME/Development/android-studio/bin:$PATH"
fi

if [ -d "$HOME/.npm-global" ]; then
  PATH=$HOME/.npm-global/bin:$PATH
fi

# kotlin native
if [ -d "$HOME/.local/kotlin" ]; then
  PATH="$HOME/.local/kotlin/bin:$PATH"
fi

# ruby rbenv
if [ -d "$HOME/.rbenv" ]; then
  PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

# flutter
if [ -d "$HOME/Development/SDK/flutter" ]; then
  PATH="$HOME/Development/SDK/flutter/bin:$PATH"
fi

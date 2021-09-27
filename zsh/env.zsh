ZSH_DISABLE_COMPFIX=true
EDITOR=nvim

# PROMPT='%n@%m %3~%(!.#.$)%(?.. [%?]) '

fpath=( "$HOME/.zsh/functions" "${fpath[@]}" )

export FZF_DEFAULT_COMMAND="fd --type f --hidden --follow --exclude .git --exclude node_modules"
export XDG_CONFIG_HOME="$HOME/.config"
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export DOTNET_CLI_TELEMETRY_OPTOUT=1   # No dot.net telemetry
export HOMEBREW_NO_ANALYTIiCS=1        # MAC Homebrew no telemetry
export BAT_THEME="GitHub"


## Default local development path
# ~/Development             - Global
# ~/Development/SDK         - SDK location
# ~/Development/Projects    - Source file and current src
DEVELOPMENT="$HOME/Development"
DEVELOPMENT_SDK="$DEVELOPMENT/SDK"
DEVELOPMENT_PROJECTS="$DEVELOPMENT/Projects"

if [ ! -d "$DEVELOPMENT"  ]; then
  mkdir -p "$DEVELOPMENT_SDK"
  mkdir -p "$DEVELOPMENT_PROJECTS"
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
if [ -d "/usr/local/go" ] ; then
  PATH="/usr/local/go/bin:$PATH"
  GOROOT="/usr/local/go"
  GOPATH="$HOME/go"
fi

if [ -d "$HOME/go" ] ; then
  PATH="$HOME/go/bin:$PATH"
fi

# fnm
if [ -d "$HOME/.fnm" ] ; then
  PATH=$HOME/.fnm:$PATH
  eval "`fnm env`"
fi

# android studio & sdk
if [ -d "$DEVELOPMENT_SDK/android" ] ; then
  export ANDROID_HOME="$DEVELOPMENT_SDK/android"
  export ANDROID_SDK_ROOT="$DEVELOPMENT_SDK/android"
  # these are needed for react-native
  # export PATH="$PATH:$ANDROID_HOME/emulator"
  # export PATH="$PATH:$ANDROID_HOME/tools"
  # export PATH="$PATH:$ANDROID_HOME/tools/bin"
  # export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"
  # export PATH="$PATH:$ANDROID_HOME/platform-tools"
fi

if [ -d "$DEVELOPMENT/IDE/android-studio" ] ; then
  export JAVA_HOME="$DEVELOPMENT/IDE/android-studio/jre"
  PATH="$DEVELOPMENT/IDE/android-studio/bin:$PATH"
  PATH="$DEVELOPMENT/IDE/android-studio/jre/bin:$PATH"
fi

# npm global path
if (( $+commands[npm])) ; then
  if [ -d "$HOME/.npm-global" ] ; then
    PATH="$HOME/.npm-global/bin:$PATH"
  else
    mkdir ~/.npm-global
    npm config set prefix '~/.npm-global'
  fi
fi

# flutter
if [ -d "$DEVELOPMENT_SDK/flutter" ] ; then
  PATH="$DEVELOPMENT_SDK/flutter/bin:$PATH"
  PATH="$DEVELOPMENT_SDK/flutter/bin/cache/dart-sdk/bin:$PATH"
fi

# Mac homebrew
if [ -d "/opt/homebrew" ] ; then
  eval $(/usr/local/bin/brew shellenv)
fi

# opam (ocaml)
if [ -d "$HOME/.opam" ] ; then
  test -r /home/flrnd/.opam/opam-init/init.zsh && . /home/flrnd/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
fi

# Zig
if [ -d "$HOME/.zig" ] ; then
  PATH="$HOME/.zig:$PATH"
fi

# rust
if [ -f "$HOME/.cargo/env" ] ; then
  . "$HOME/.cargo/env"
fi

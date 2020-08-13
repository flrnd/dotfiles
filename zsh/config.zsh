# load custom config
. ~/.zsh/alias.zsh
. ~/.zsh/git/git.zsh
. ~/.zsh/functions.zsh

# tilix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi

## zplug
. ~/.zplug/init.zsh

zplug "modules/directory", from:prezto
zplug "modules/completion", from:prezto
zplug "modules/history", from:prezto
zplug 'wfxr/forgit'

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# prompt
. ~/.zsh/prompt/prompt.zsh


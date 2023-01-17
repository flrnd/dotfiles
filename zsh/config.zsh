# load custom config
. ~/.zsh/alias.zsh       # aliases
. ~/.zsh/functions.zsh   # utility functions
. ~/.zsh/history.zsh     # sane history defaults
. ~/.zsh/completion.zsh  # sane completion defaults
. ~/.zsh/dir.zsh         # sane directory defaults

# if Plasma use ksshask instead
. ~/.zsh/helpers/sshadd.zsh

# tilix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
    . /etc/profile.d/vte.sh
fi

# Load pluggins
. ~/.zsh/plugins/fzf.zsh
. ~/.zsh/plugins/forgit.zsh
. ~/.zsh/plugins/asdf.zsh

# prompt
. ~/.zsh/prompt/prompt.zsh

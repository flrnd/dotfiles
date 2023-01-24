# load custom config
. ~/.dot/zsh/alias.zsh       # aliases
. ~/.dot/zsh/functions.zsh   # utility functions
. ~/.dot/zsh/history.zsh     # sane history defaults
. ~/.dot/zsh/completion.zsh  # sane completion defaults
. ~/.dot/zsh/dir.zsh         # sane directory defaults

# if Plasma use ksshask instead
. ~/.dot/zsh/helpers/sshadd.zsh

# tilix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
    . /etc/profile.d/vte.sh
fi

# Load pluggins
. ~/.dot/zsh/plugins/fzf.zsh
. ~/.dot/zsh/plugins/forgit.zsh
. ~/.dot/zsh/plugins/asdf.zsh

# prompt
. ~/.dot/zsh/prompt/prompt.zsh

# load custom config
. ~/.zsh/alias.zsh       # aliases
. ~/.zsh/git/git.zsh     # manage git aware prompt
. ~/.zsh/functions.zsh   # utility functions
. ~/.zsh/history.zsh     # sane history defaults
. ~/.zsh/prezto_completion.zsh  # sane completion defaults from https://github.com/sorin-ionescu/prezto
. ~/.zsh/dir.zsh         # sane directory defaults

# if Plasma use ksshask instead
. ~/.zsh/helpers/sshadd.zsh

# tilix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi

# Load pluggins
. ~/.zsh/plugins/fzf.zsh
. ~/.zsh/plugins/forgit.zsh

# prompt
. ~/.zsh/prompt/prompt.zsh

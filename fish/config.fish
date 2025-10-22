set -g fish_autosuggestion_enabled 0 # disable autosuggestions
set -g fish_greeting ""

set -gx EDITOR (which nvim)
set -gx VISUAL $EDITOR
set -gx GIT_EDITOR $EDITOR
set -gx FORCE_COLOR true
set -g MANPAGER "sh -c 'col -bx | bat -l man -p'"
set -g MANROFFOPT -c

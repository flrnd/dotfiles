# --- fzf ---
FZF_PATH="$HOMEBREW_PREFIX/opt/fzf/shell/key-bindings.bash"
[ -f "$FZF_PATH" ] && source "$FZF_PATH"

if command -v fd >/dev/null 2>&1; then
  export FZF_DEFAULT_COMMAND='fd --type f --follow --hidden --exclude .git --exclude node_modules'
fi

# --- forgit ---
[ -f "$HOMEBREW_PREFIX/share/forgit/forgit.plugin.sh" ] && source $HOMEBREW_PREFIX/share/forgit/forgit.plugin.sh

# --- aliases ---
alias vi='nvim'
alias vim='nvim'
alias lg='lazygit'
alias gc='git commit --verbose'
alias gcb='git checkout -b'

# --- history ---
export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=10000
export HISTFILESIZE=20000
shopt -s histappend

# --- git prompt ---
source /usr/share/git/completion/git-prompt.sh 2>/dev/null

__prompt_git() {
  __git_ps1 ' (%s)'
}

PS1='\[\e[32m\]\u@\h\[\e[0m\] \[\e[34m\]\w\[\e[0m\]$(__prompt_git)\$ '

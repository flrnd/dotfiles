#fpath=(~/.zsh $fpath)

# load custom config
. ~/.zsh/alias.zsh
. ~/.zsh/completion.zsh
. ~/.zsh/directory.zsh
. ~/.zsh/git/git.zsh
. ~/.zsh/history.zsh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# tilix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi

# forgit
. ~/.zsh/plugins/forgit.plugin.zsh

# asdf version manager
if [ -d "$HOME/.asdf" ] ; then
  . $HOME/.asdf/asdf.sh
  . $HOME/.asdf/completions/asdf.bash
fi

# fnm
if [ -d "$HOME/.fnm" ]; then
  PATH=$HOME/.fnm:$PATH
  eval "`fnm env --multi`"
fi

# ruby rbenv
if [ -d "$HOME/.rbenv" ]; then
  PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

# prompt
. ~/.zsh/prompt/prompt.zsh


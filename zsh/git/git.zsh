# download in case it does not exist.

  if [ ! -f ~/.zsh/git/git-prompt.sh  ]; then
  curl -fsSL https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh --output ~/.zsh/git/git-prompt.sh
fi

. ~/.zsh/git/git-prompt.sh

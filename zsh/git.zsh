# download in case it does not exist.

if [ ! -f ./git-prompt.sh  ]; then
  curl -fsSL https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh --output ./git-prompt.sh
fi

if [ ! -f ./git-completion.zsh ]; then
  curl -fsSL https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh --output ./git-completion.zsh
fi

. ~/.zsh/git-prompt.sh

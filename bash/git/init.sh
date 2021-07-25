if [ ! -f ~/.bash/git/git-prompt.sh  ]; then
   curl -fsSLO https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
fi

. ~/.bash/git/git-prompt.sh

# Load all functions in directory
FUNC_PATH=~/.zsh/functions/
fpath=($FUNC_PATH "${fpath[@]}")
for func in $(ls $FUNC_PATH); do autoload -Uz $func; done

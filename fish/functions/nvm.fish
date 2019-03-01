function nvm
  if test -e ~/.nvm/nvm.sh
    bass source ~/.nvm/nvm.sh ';' nvm $argv
  else
    echo "nvm is not installed"
  end
end

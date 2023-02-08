function cat --description "bat wrapper"
  if test -e (which bat)
    bat $argv
  else
    cat $argv
  end
end

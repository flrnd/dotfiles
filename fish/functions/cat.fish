function cat --description "bat wrapper"
  set -l bat_command (which bat)

  if [ test -e $bat_command ]
    command bat $argv
  end
end

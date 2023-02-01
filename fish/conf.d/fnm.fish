# fnm
if test -e "$HOME/.local/share/fnm"
  set PATH "$HOME/.local/share/fnm" $PATH
  fnm env | source
end

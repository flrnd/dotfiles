# go
if test -e "$HOME/.local/share/go"
  set -gx GOROOT "$HOME/.local/share/go"
  set -gx PATH "$HOME/.local/share/go/bin" $PATH
end

if test -e "$HOME/go"
  set -gx PATH "$HOME/go/bin" $PATH
  set -gx GOPATH "$HOME/go"
  set -gx GOBIN "$HOME/go/bin"
end

# go
if test -e "$HOME/.local/go"
  set -gx GOROOT "$HOME/.local/go"
  set -gx PATH "$HOME/.local/go/bin" $PATH
end

if test -e "$HOME/go"
  set -gx PATH "$HOME/go/bin" $PATH
  set -gx GOPATH "$HOME/go"
  set -gx GOBIN "$HOME/go/bin"
end

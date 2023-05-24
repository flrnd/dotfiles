# home bin
if test -e "$HOME/bin"
    set -gx PATH "$HOME/bin" $PATH
end

if test -e "$HOME/.local/bin"
    set -gx PATH "$HOME/.local/bin" $PATH
end

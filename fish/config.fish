source ~/.config/fish/aliases.fish
set SPACEFISH_GIT_SYMBOL ""

if test -d ~/.config/node/global/bin
  set -gx PATH ~/.config/node/global/bin $PATH
end


source ~/.config/fish/aliases.fish

if test -d ~/.config/node/global/bin
  set -gx PATH ~/.config/node/global/bin $PATH
end


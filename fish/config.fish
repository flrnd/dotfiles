set -x EDITOR vim
set -x VISUAL $EDITOR
set -x GIT_EDITOR $EDITOR
set -x PAGER "less"
set -x FZF_DEFAULT_COMMAND "fd --type f --follow --hidden --exclude .git --exclude node_modules"

# go support
if test -e $HOME/go/bin
  set -x PATH $PATH $HOME/go/bin
end

if test -d ~/.config/node/global/bin
  set -gx PATH ~/.config/node/global/bin $PATH
end

# Abbreviations
abbr nv "nvim"
abbr ga "git add"
abbr gcb "git checkout -b"
abbr gp "git push"
abbr gpoh "git push -u origin HEAD"
abbr gs "git status -s"

#prompt
source ~/.config/fish/functions/fish_prompt.fish
source ~/.config/fish/functions/rprompt.fish

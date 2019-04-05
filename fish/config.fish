set -x EDITOR vim
set -x VISUAL $EDITOR
set -x GIT_EDITOR $EDITOR
set -x PAGER "less"
set -x FZF_DEFAULT_COMMAND "fdfind --type f --follow --hidden --exclude .git --exclude node_modules"

# go support
if test -e $HOME/go/bin
  set -x fish_user_paths $HOME/go/bin $fish_user_paths
end

if test -d ~/.yarn/bin
  set -gx fish_user_paths ~/.yarn/bin $fish_user_paths
end

# Abbreviations
abbr nv "nvim"
abbr ga "git add"
abbr gcb "git checkout -b"
abbr gm "git commit -m"
abbr gp "git push"
abbr gpoh "git push -u origin HEAD"
abbr gs "git status -s"

#prompt
source ~/.config/fish/functions/fish_prompt.fish

# fnm
if test -e $HOME/.fmn
  set PATH $HOME/.fnm $PATH
  fnm env --multi | source
end

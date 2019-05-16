set -x EDITOR vim
set -x VISUAL $EDITOR
set -x GIT_EDITOR $EDITOR
set -x PAGER "less"
set -x FZF_DEFAULT_COMMAND "fdfind --type f --follow --hidden --exclude .git --exclude node_modules"

# go support
if test -e /usr/local/go/
  set PATH /usr/local/go/bin $PATH
end

if test -e ~/.yarn/bin
  set PATH ~/.yarn/bin $PATH
end

if test -e ~/go/bin
  set PATH ~/go/bin $PATH
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
if test -e $HOME/.fnm
  set PATH $HOME/.fnm $PATH
  fnm env --multi | source
end

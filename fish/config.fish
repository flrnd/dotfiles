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

# Alias's to modified commands
alias cp 'cp -i'
alias cat 'bat'
alias mv 'mv -i'
alias rm 'rm -iv'
alias rmf 'rm -ivrf'
alias mkdir 'mkdir -p'
alias ps 'ps auxf'
alias less 'less -R'
alias vi 'nvim'
alias svi 'sudo nvim'
alias vis 'nvim "+set si"'

#directories
alias home 'cd ~'
alias .. 'cd ..'
alias ... 'cd ../..'
alias .... 'cd../../..'

# Alias's for multiple directory listing commands
alias la 'ls -Alh' # show hidden files
alias ls 'ls -aFh --color=always' # add colors and file type extensions
alias lx 'ls -lXBh' # sort by extension
alias lk 'ls -lSrh' # sort by size
alias lc 'ls -lcrh' # sort by change time
alias lu 'ls -lurh' # sort by access time
alias lr 'ls -lRh' # recursive ls
alias lt 'ls -ltrh' # sort by date
alias lm 'ls -alh |more' # pipe through 'more'
alias lw 'ls -xAh' # wide listing format
alias ll 'ls -Fls' # long listing format
alias labc 'ls -lap' #alphabetical sort
alias lf "ls -l | egrep -v '^d'" # files only
alias ldir "ls -l | egrep '^d'" # directories only

# fd-find
alias fd 'fdfind'

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

#gpaste-client
if test -x (command -v gpaste-client)
  alias gpasteg='gpaste-client get'
  alias gpastes='gpaste-client select'
  alias gpastel='gpaste-client | less'
end

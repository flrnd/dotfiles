
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

set lsFlags ''
switch (uname)
  case Linux
    set lsFlags --color --group-directories-first -h
  case Darwin
    set lsFlags -G
  end

# Alias's for multiple directory listing commands
alias ls 'ls {$lsFlags}'  # add colors and file type extensions
alias la 'ls -A'         # show hidden files
alias lx 'ls -lXB'        # sort by extension
alias lk 'ls -lSr'        # sort by size
alias lc 'ls -lcr'        # sort by change time
alias lu 'ls -lur'        # sort by access time
alias lr 'ls -lR'         # recursive ls
alias lt 'ls -ltr'        # sort by date
alias lw 'ls -xA'         # wide listing format
alias ll 'ls -Fls'        # long listing format
alias labc 'ls -lap'      #alphabetical sort
alias lf "ls -l | egrep -v '^d'"  # files only
alias ldir "ls -l | egrep '^d'"   # directories only

# fd-find
alias fd 'fdfind'

# mpv filters
alias mpv 'mpv --af="acompressor=ratio=4,loudnorm"'
alias mpv-drc 'mpv --af="acompressor=ratio=4,loudnorm"'
alias mpv-nm 'mpv --af=lavfi=[pan="stereo|FL=FC+0.30*FL+0.30*FLC+0.30*BL+0.30*SL+0.60*LFE|FR=FC+0.30*FR+0.30*FRC+0.30*BR+0.30*SR+0.60*LFE"]'
alias mpv-nm-drc 'mpv --af=lavfi=[pan="stereo|FL=FC+0.30*FL+0.30*FLC+0.30*BL+0.30*SL+0.60*LFE|FR=FC+0.30*FR+0.30*FRC+0.30*BR+0.30*SR+0.60*LFE,loudnorm"]'

# Abbreviations
abbr em "emacs"
abbr nv "nvim"
abbr ga "git add"
abbr gcb "git checkout -b"
abbr gm "git commit -m"
abbr gp "git push"
abbr gpoh "git push -u origin HEAD"
abbr gs "git status -s"



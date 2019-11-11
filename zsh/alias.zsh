# GNU and BSD (macOS) ls flags aren't compatible
ls --version &>/dev/null
if [ $? -eq 0 ]; then
  lsflags="--color --group-directories-first -Fh"
  alias fd="fdfind"
else
  lsflags="-GF"
  export CLICOLOR=1
fi

# editor
alias vi="nvim"

# ls
alias ls="ls ${lsflags}"
alias la="ls -a"
alias ll="ls -al"
alias lr="ls -lR"
alias lt="ls -ltr"
alias cat="bat"

# directories
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -iv"
alias rmf="rm -ivrf"
alias mkdir="mkdir -p"
alias less="less -R"


# mpv filters
alias mpv-drc='mpv --af="acompressor=ratio=4,loudnorm"'
alias mpv-nm="mpv --af=lavfi=\"[pan='stereo|FL=FC+0.30*FL+0.30*FLC+0.30*BL+0.30*SL+0.60*LFE|FR=FC+0.30*FR+0.30*FRC+0.30*BR+0.30*SR+0.60*LFE']\""
alias mpv-nm-drc="mpv --af=lavfi=\"[pan='stereo|FL=FC+0.30*FL+0.30*FLC+0.30*BL+0.30*SL+0.60*LFE|FR=FC+0.30*FR+0.30*FRC+0.30*BR+0.30*SR+0.60*LFE,loudnorm']\""



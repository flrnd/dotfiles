#!/bin/bash
# default media player
MPLAYER=mpv
# filters
DRC="acompressor=ratio=4,loudnorm"
NM="[pan='stereo|FL=FC+0.30*FL+0.30*FLC+0.30*BL+0.30*SL+0.60*LFE|FR=FC+0.30*FR+0.30*FRC+0.30*BR+0.30*SR+0.60*LFE']"
NMDRC="[pan='stereo|FL=FC+0.30*FL+0.30*FLC+0.30*BL+0.30*SL+0.60*LFE|FR=FC+0.30*FR+0.30*FRC+0.30*BR+0.30*SR+0.60*LFE',loudnorm]"

# colors
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
cyan=`tput setaf 6`
reset_color=`tput sgr0`

arguments=${@: 2} # argument string minus name and mode

if ! command -v $MPLAYER > /dev/null ; then
  echo "$MPLAYER not found."
  exit 1
fi

case "$1" in
  drc)
    $MPLAYER --af=$DRC $arguments
    ;;
  nofilter)
    $MPLAYER $2
    ;;
  nm)
    $MPLAYER --af=lavfi=$NM $arguments
    ;;
  nmdrc)
    $MPLAYER --af=lavfi=$NMDRC $arguments
    ;;
  help)
    echo -e "\n${green} media function options:"
    echo -e "${yellow} drc\t${reset_color} dynamic range compression."
    echo -e "${yellow} nm\t${reset_color} night mode filter."
    echo -e "${yellow} nmdrc\t${reset_color} night mode with dynamic range compression."
    echo -e "${yellow} help\t${reset_color} print this screen."
    echo -e "\nUsage: $0 ${cyan} drc ${reset_color} | ${cyan} nm ${reset_color} | ${cyan} nmdrc ${reset_color} <file>\n"
    exit 1
    ;;
  *)
    if [[ ! $1 ]]; then
      echo -e "${red} * ${green}try:${reset_color} media ${yellow} help ${reset_color}"
      exit 1
    fi
    $MPLAYER $1
    ;;
esac



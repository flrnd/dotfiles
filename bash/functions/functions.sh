function apt-history(){
      case "$1" in
        install)
              grep 'install ' /var/log/dpkg.log
              ;;
        upgrade|remove)
              grep $1 /var/log/dpkg.log
              ;;
        rollback)
              grep upgrade /var/log/dpkg.log | \
                  grep "$2" -A10000000 | \
                  grep "$3" -B10000000 | \
                  awk '{print $4"="$5}'
              ;;
        *)
              cat /var/log/dpkg.log
              ;;
      esac
}

function mediaplayer(){
  # default media player
  MPLAYER="gnome-session-inhibit --inhibit idle flatpak run io.mpv.Mpv"
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
    printf "%s not found.\n" "$MPLAYER"
    return -1
  fi

  case "$1" in
    drc)
      $MPLAYER --af=$DRC "$arguments"
      ;;
    nofilter)
      $MPLAYER $2
      ;;
    nm)
      $MPLAYER --af=lavfi=$NM "$arguments"
      ;;
    nmdrc)
      $MPLAYER --af=lavfi=$NMDRC "$arguments"
      ;;
    help)
      printf "\n%s media filters\n" "${green}"
      printf "%s drc\t%s dynamic range compression.\n" "${yellow}" "${reset_color}"
      printf "%s nm\t%s night mode filter.\n" "${yellow}" "${reset_color}"
      printf "%s nmdrc\t%s night mode with dynamic range compression.\n" "${yellow}" "${reset_color}"
      printf "\n%s Options\n" "${green}"
      printf "%s help\t%s print this screen.\n" "${yellow}" "${reset_color}"
      printf "\nUsage: $0 %s drc %s | %s nm %s | %s nmdrc %s <file> <parameters>\n" "${cyan}" "${reset_color}" "${cyan}" "${reset_color}" "${cyan}" "${reset_color}"
      ;;
    *)
      if [[ ! $1 ]]; then
        printf "%s * %stry:%s media %shelp%s\n" "${red}" "${green}" "${reset_color}" "${yellow}" "${reset_color}"
      else
        $MPLAYER $1
      fi
      ;;
  esac
}
media() {
  autoload -U colors && colors # Enable colors
  # default media player
  MPLAYER=mpv
  # filters
  DRC="acompressor=ratio=4,loudnorm"
  NM="[pan='stereo|FL=FC+0.30*FL+0.30*FLC+0.30*BL+0.30*SL+0.60*LFE|FR=FC+0.30*FR+0.30*FRC+0.30*BR+0.30*SR+0.60*LFE']"
  NMDRC="[pan='stereo|FL=FC+0.30*FL+0.30*FLC+0.30*BL+0.30*SL+0.60*LFE|FR=FC+0.30*FR+0.30*FRC+0.30*BR+0.30*SR+0.60*LFE,loudnorm']"

  if (( ! $+commands[$MPLAYER] )); then
    return 1
  fi

  case "$1" in
    drc)
      $MPLAYER --af=$DRC $2
      ;;
    nofilter)
      $MPLAYER $2
      ;;
    nm)
      $MPLAYER --af=lavfi=$NM $2
      ;;
    nmdrc)
      $MPLAYER --af=lavfi=$NMDRC $2
      ;;
    help)
      echo "\n$fg[green]media function options:"
      echo "$fg[yellow]drc\t$reset_color dynamic range compression."
      echo "$fg[yellow]nm\t$reset_color night mode filter."
      echo "$fg[yellow]nmdrc\t$reset_color night mode with dynamic range compression."
      echo "$fg[yellow]help\t$reset_color print this screen."
      echo "\nUsage: $0 {$fg[cyan]drc$reset_color|$fg[cyan]nm$reset_color|$fg[cyan]nmdrc$reset_color} <file>\n"
      return 1
      ;;
    *)
      if [[ ! $1 ]]; then
        echo "$fg[red]* $fg[green]try:$reset_color media $fg[yellow]help$reset_color"
        return 1
      fi
      $MPLAYER $1
      ;;
  esac
}

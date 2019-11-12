function mp --argument mode
  if test -n "$mode"
    switch $mode
      case drc
        mpv --af="acompressor=ratio=4,loudnorm" $argv
      case nm
        mpv --af=lavfi=[pan="stereo|FL=FC+0.30*FL+0.30*FLC+0.30*BL+0.30*SL+0.60*LFE|FR=FC+0.30*FR+0.30*FRC+0.30*BR+0.30*SR+0.60*LFE"] $argv
    end
  else
    mpv $argv
  end
end


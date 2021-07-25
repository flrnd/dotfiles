function media -a mode
    set DRC "acompressor=ratio=4,loudnorm"
    set NM 'pan=stereo|FL=FC+0.30*FL+0.30*FLC+0.30*BL+0.30*SL+0.60*LFE|FR=FC+0.30*FR+0.30*FRC+0.30*BR+0.30*SR+0.60*LFE'
    set NMDRC "pan=stereo|FL=FC+0.30*FL+0.30*FLC+0.30*BL+0.30*SL+0.60*LFE|FR=FC+0.30*FR+0.30*FRC+0.30*BR+0.30*SR+0.60*LFE,loudnorm"

    if test (count $argv) -lt 2
        mpv $argv
    else
        switch $mode
            case "drc"
                mpv --af=$DRC $argv[(count $argv)]
            case "nm"
                mpv --af=pan="[stereo | FL=FC+0.30*FL+0.30*FLC+0.30*BL+0.30*SL+0.60*LFE | FR=FC+0.30*FR+0.30*FRC+0.30*BR+0.30*SR+0.60*LFE]" $argv[(count $argv)]
            case "nmdrc"
                mpv --af=$NMDRC $argv[(count $argv)]
        end
    end
end


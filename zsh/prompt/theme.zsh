typeset -A pure_halloween_scheme=(
	color1 "#E84000" # Tangelo
	color2 "#EB6123" # Halloween Orange
	color3 "#FFE5D5" # Flesh
	color4 "#F1B111" # Spanish Yellow
	color5 "#FF1A72" # Electric Pink
	color6 "#E40055" # Raspberry
)

zstyle :prompt:pure:execution_time      color $pure_halloween_scheme[color3]
zstyle :prompt:pure:git:arrow           color $pure_halloween_scheme[color5]
zstyle :prompt:pure:git:branch          color $pure_halloween_scheme[color2]
zstyle :prompt:pure:git:branch:cached   color $pure_halloween_scheme[color1]
zstyle :prompt:pure:git:dirty           color $pure_halloween_scheme[color4]
zstyle :prompt:pure:host                color $pure_halloween_scheme[color6]
zstyle :prompt:pure:path                color $pure_halloween_scheme[color1]
zstyle :prompt:pure:prompt:error        color $pure_halloween_scheme[color1]
zstyle :prompt:pure:prompt:success      color $pure_halloween_scheme[color4]
zstyle :prompt:pure:user                color $pure_halloween_scheme[color4]
zstyle :prompt:pure:user:root           color $pure_halloween_scheme[color3]
zstyle :prompt:pure:virtualenv          color $pure_halloween_scheme[color6]

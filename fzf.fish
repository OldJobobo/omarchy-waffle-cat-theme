set -l color00 '#292025'
set -l color01 '#ff8c68'
set -l color02 '#f0e65a'
set -l color03 '#a4a900'
set -l color04 '#ffbe55'
set -l color05 '#c7f3ff'
set -l color06 '#c5a0b6'
set -l color07 '#f7dd9b'
set -l color08 '#834f36'
set -l color09 '#ff8c68'
set -l color0A '#f0e65a'
set -l color0B '#a4a900'
set -l color0C '#ffbe55'
set -l color0D '#c7f3ff'
set -l color0E '#c5a0b6'
set -l color0F '#e88f37'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"

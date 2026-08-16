set -l color00 '#292025'
set -l color01 '#cf7358'
set -l color02 '#9fad68'
set -l color03 '#c8964b'
set -l color04 '#c87d2a'
set -l color05 '#c98c97'
set -l color06 '#9eb8b2'
set -l color07 '#fff4d8'
set -l color08 '#a58c82'
set -l color09 '#e58a70'
set -l color0A '#b9c97f'
set -l color0B '#e4c56d'
set -l color0C '#df9850'
set -l color0D '#ddb0b8'
set -l color0E '#c2d5d0'
set -l color0F '#fffaf0'

# Remove complete existing fzf color arguments without splitting quoted options.
set -l fzf_non_color_opts (string replace -ar -- '--color(?:=[^[:space:]]+|[[:space:]]+[^[:space:]]+)' '' -- "$FZF_DEFAULT_OPTS")
set -l fzf_theme "--color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"
set -Ux FZF_DEFAULT_OPTS (string trim -- "$fzf_non_color_opts $fzf_theme")

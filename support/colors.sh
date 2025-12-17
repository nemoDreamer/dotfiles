#!/usr/bin/env fish

# List of color values:

#   a = black
#   b = red
#   c = green
#   d = brown
#   e = blue
#   f = magenta
#   g = cyan
#   h = grey
#   A = dark grey
#   B = bold red
#   C = bold green
#   D = yellow
#   E = bold blue
#   F = magenta
#   G = cyan
#   H = white
#   x = default

# Positions in LSCOLORS:

#   directory
#   symbolic link
#   socket
#   pipe
#   executable
#   block device
#   character device
#   executable with setuid set
#   executable with setguid set
#   directory writable by others, with sticky bit
#   directory writable by others, without sticky bit

# The default is "exfxcxdxbxegedabagacad"

set -g -x LSCOLORS "Exfxcxdxbxegedabagacad"

# Fish colors:
set -U fish_color_normal normal
set -U fish_color_command cyan --bold # normal
set -U fish_color_keyword normal
set -U fish_color_quote yellow
set -U fish_color_redirection cyan --bold
set -U fish_color_end green
set -U fish_color_error brred
set -U fish_color_param cyan
set -U fish_color_comment red
set -U fish_color_selection white --bold --background=brblack
set -U fish_color_search_match white --bold --background=brblack
set -U fish_color_history_current --bold
set -U fish_color_operator brcyan
set -U fish_color_escape brcyan
set -U fish_color_cwd green
set -U fish_color_cwd_root red
set -U fish_color_option cyan
set -U fish_color_valid_path --underline=single
set -U fish_color_autosuggestion brblack
set -U fish_color_user brgreen
set -U fish_color_host normal
set -U fish_color_host_remote yellow
set -U fish_color_history_current --bold
set -U fish_color_status red
set -U fish_color_cancel --reverse
set -U fish_pager_color_prefix normal --bold --underline=single
set -U fish_pager_color_progress brwhite --bold --background=cyan
set -U fish_pager_color_completion normal
set -U fish_pager_color_description yellow --italics
set -U fish_pager_color_selected_background --reverse
set -U fish_pager_color_selected_completion 
set -U fish_pager_color_selected_description 
set -U fish_pager_color_secondary_prefix 
set -U fish_pager_color_secondary_description 
set -U fish_pager_color_secondary_background 
set -U fish_pager_color_selected_prefix 
set -U fish_pager_color_secondary_completion 
set -U fish_pager_color_background 

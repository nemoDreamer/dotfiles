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

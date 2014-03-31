
# PROFILE
# ==================================================


# COMPLETION
# --------------------------------------------------
for completion in ~/.completions/*; do
  source $completion
done


# EXTENSIONS
# --------------------------------------------------
for extension in ~/.extensions/*; do
  source $extension
done


# EDITORS
# --------------------------------------------------
# use Sublime Text as the visual editor
export VISUAL='subl -w'
# export EDITOR=/usr/bin/nano
export EDITOR=$VISUAL

# ALIASES
# --------------------------------------------------
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi


# HISTORY
# --------------------------------------------------
# ignore duplicate history entries
export HISTCONTROL=erasedups
# keep TONS of history
export HISTSIZE=1000000
# load 'always' history
# history -r "$HOME/.histalways"


# CORRECT
# --------------------------------------------------
# Try to correct command line spelling
# setopt CORRECT CORRECT_ALL


# COLORS
# --------------------------------------------------
# - makes color constants available
# autoload -U colors
# colors
# - colorize LS, ...
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS='Exfxcxdxbxegedabagacad'


# PACKAGES
# --------------------------------------------------
# Node
export NODE_PATH=/usr/local/lib/node_modules
# RVM
PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# PATH
# --------------------------------------------------
# Homebrew
export PATH="/usr/local/sbin:/usr/local/bin:$PATH"
# XCode binaries
export PATH="$PATH:/Applications/Xcode.app/Contents/Developer/usr/bin"


# OTHER SETTINGS
# --------------------------------------------------
# Tabs
tabs -4


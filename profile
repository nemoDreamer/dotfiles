
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
# load 'always' history
history -a "$HOME/.histalways"
# ignore duplicate history entries
export HISTCONTROL=erasedups
# keep TONS of history
export HISTSIZE=1000000


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
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting


# PATH
# --------------------------------------------------
# Homebrew
export PATH="/usr/local/bin:$PATH"


# OTHER SETTINGS
# --------------------------------------------------
# Tabs
tabs -4

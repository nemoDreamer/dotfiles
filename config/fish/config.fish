# Path to Oh My Fish install.
set -gx OMF_PATH "/Users/philip/.local/share/omf"

# Customize Oh My Fish configuration path.
set -gx OMF_CONFIG "/Users/philip/.config/omf"

# Colors
source "$HOME/.dotfiles/support/colors.sh"

# Settings
set BROWSER open
# - Editor
set -g -x EDITOR "subl -w"
set -g -x VISUAL "subl -w"
# - Bundler
set -g -x BUNDLE_TRAMPOLINE_FORCE 1
# - Go
set -g -x GOPATH $HOME/.gocode
set -g -x PATH "$GOPATH/bin" $PATH
# - Fink
set -g -x PATH "/sw/bin" $PATH
# - tank
set -g -x PATH "$HOME/Library/Application Support/Shotgun/vm.shotgun.local/site" $PATH
# - Node.js
set -g -x PATH "./node_modules/.bin" $PATH
# NVM
set -gx NVM_DIR "$HOME/.nvm"
# - Python
set -g -x PYTHONPATH "/sw/Library/Python/2.7/site-packages" $PYTHONPATH
# - z
set -g Z_SCRIPT_PATH "$HOME/.dotfiles/support/z/z.sh"
# - BobTheFish
set -g default_user philip
set -g theme_color_scheme dark
set -g theme_display_git_ahead_verbose yes
set -g theme_display_vagrant yes
# set -g theme_display_node yes # <- NOTE: not official release (branch: display_node)
set -g theme_display_vi no
set -g theme_nerd_fonts yes
# set -g theme_newline_cursor yes
# set -g theme_prompt_break no # <- NOTE: not official release (branch: prompt-break)

# Load oh-my-fish configuration.
source "$OMF_PATH/init.fish"

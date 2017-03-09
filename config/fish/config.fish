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
# - Go
set -g -x GOPATH $HOME/.gocode
set -g -x PATH "$GOPATH/bin" $PATH
# - Fink
set -g -x PATH "/sw/bin" $PATH
# - tank
set -g -x PATH "$HOME/Library/Application Support/Shotgun/vm.shotgun.local/site" $PATH
# - Python
set -g -x PYTHONPATH "/sw/Library/Python/2.7/site-packages" $PYTHONPATH
# - z
set -g Z_SCRIPT_PATH "$HOME/.dotfiles/support/z/z.sh"
# - GRC
#   (http://kassiopeia.juls.savba.sk/~garabik/software/grc.html)
#   - colorize `ls`
# set -U grcplugin_ls -G
# - BobTheFish
set -g default_user your_normal_user
set -g theme_color_scheme dark
set -g theme_display_vagrant yes
set -g theme_display_vi no
set -g theme_nerd_fonts yes

# Load oh-my-fish configuration.
source "$OMF_PATH/init.fish"

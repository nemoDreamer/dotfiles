
# Paths to your tackle
set tacklebox_path ~/.tackle ~/.tacklebox ~/.oh-my-fish

# Theme
set tacklebox_theme bobthefish

# Which modules would you like to load? (modules can be found in ~/.tackle/modules/*)
# Custom modules may be added to ~/.tacklebox/modules/
# Example format: set tacklebox_modules virtualfish virtualhooks

# Which plugins would you like to enable? (plugins can be found in ~/.tackle/plugins/*)
# Custom plugins may be added to ~/.tacklebox/plugins/
# Example format: set tacklebox_plugins python extract
set tacklebox_plugins bak balias brew bundler emoji-clock extract extract gi git-flow grc jump localhost node pip python rails sublime up

# Load Tacklebox configuration
. ~/.tacklebox/tacklebox.fish

# ---

# Settings
set BROWSER open
# - Editor
set -g -x EDITOR "subl -w"
set -g -x VISUAL "subl -w"
# - Go
set -g -x GOPATH $HOME/.gocode
set -g -x PATH "$GOPATH/bin" $PATH

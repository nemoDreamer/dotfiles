
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
set tacklebox_plugins bak balias brew bundler emoji-clock extract extract gi git-flow grc jump localhost node pip python rails rbenv sublime up

# Load Tacklebox configuration
. ~/.tacklebox/tacklebox.fish

# ---

# Go
set -g GOPATH $HOME/gocode
set -g PATH "$GOPATH/bin" $PATH

# Editor
set -g EDITOR "subl -w"

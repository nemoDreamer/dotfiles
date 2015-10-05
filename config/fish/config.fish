
# Paths to your tackle
set tacklebox_path ~/.tackle ~/.tacklebox ~/.oh-my-fish

# Theme
set tacklebox_theme bobthefish

# Which modules would you like to load? (modules can be found in ~/.tackle/modules/*)
# Custom modules may be added to ~/.tacklebox/modules/
# Example format: set tacklebox_modules virtualfish virtualhooks
set tacklebox_modules virtualfish virtualhooks z

# Which plugins would you like to enable? (plugins can be found in ~/.tackle/plugins/*)
# Custom plugins may be added to ~/.tacklebox/plugins/
# Example format: set tacklebox_plugins python extract
set tacklebox_plugins bak balias brew bundler emoji-clock extract gi git-flow grc jump localhost node pip python rails sublime up

# Load Tacklebox configuration
source ~/.tacklebox/tacklebox.fish

# ---

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
# - Python
set -g -x PYTHONPATH "/sw/Library/Python/2.7/site-packages" $PYTHONPATH
# - rbenv
# . (rbenv init - | psub)
set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

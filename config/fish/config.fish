# Colors
source "$HOME/.dotfiles/support/colors.sh"

# Homebrew
eval (/usr/local/bin/brew shellenv)

# Settings

set BROWSER open

# - Editor
set -gx EDITOR "code -w"
set -gx VISUAL "code -w"

# - Bundler
set -gx BUNDLE_TRAMPOLINE_FORCE 1

# - Go
set -gx GOPATH $HOME/.gocode
set -gx PATH "$GOPATH/bin" $PATH

# # - wine
# set -gx PATH "/Applications/Wine Stable.app/Contents/Resources/start/bin" $PATH
# set -gx PATH "/Applications/Wine Stable.app/Contents/Resources/wine/bin" $PATH

# - Node.js
set -gx PATH "./node_modules/.bin" $PATH

# - NVM
set -gx NVM_DIR "$HOME/.nvm"

# - Python
# set -gx PYTHONPATH "/usr/local/lib/python2.7/site-packages" $PYTHONPATH
set -gx PATH "/Users/philipblyth/Library/Python/2.7/bin" $PATH
# - PyEnv
status is-interactive; and pyenv init --path | source
pyenv init - | source
# pyenv virtualenv-init - | source
set -gx WORKON_HOME ~/.venvs
set -gx VIRTUAL_ENV_DISABLE_PROMPT 1

# - Vagrant
set -gx VAGRANT_USE_VAGRANT_TRIGGERS 1

# - Groovy
set -gx GROOVY_HOME "/usr/local/opt/groovy/libexec"

# - Ruby
set OPENSSL_DIR (brew --prefix openssl@1.1)
set -gx RUBY_CONFIGURE_OPTS "--with-openssl-dir=$OPENSSL_DIR"

# - BobTheFish
set -g default_user philipblyth
# set -g fish_prompt_pwd_dir_length 3
# set -g theme_project_dir_length 1
set -g theme_color_scheme terminal
set -g theme_display_git_ahead_verbose yes
set -g theme_display_git_dirty_verbose yes
# set -g theme_display_git_master_branch yes
# set -g theme_git_worktree_support yes
set -g theme_display_ruby yes
set -g theme_display_nvm yes
# set -g theme_display_node yes # <- NOTE: not official release (branch: display_node)
set -g theme_display_vi no
set -g theme_nerd_fonts yes
set -g theme_newline_cursor yes
# set -g theme_prompt_break no # <- NOTE: not official release (branch: prompt-break)
# - Disable vi prompt
set -g fish_vi_mode_prompt no
set -g fish_vi_key_bindings no
# function fish_mode_prompt
# end

# - Scripts
set -g SCRIPT_SAY_POSTURE 0

# keg-only caveats
# - SSL
#   - LibreSSL
set LIBRESSL_DIR (brew --prefix libressl)
set -gx PATH "$LIBRESSL_DIR/bin" $PATH
#   - OpenSSL
set OPENSSL_DIR (brew --prefix openssl)
set -gx PATH "$OPENSSL_DIR/bin" $PATH
set -gx LDFLAGS "-L$OPENSSL_DIR/lib"
set -gx CPPFLAGS "-I$OPENSSL_DIR/include"
set -gx PKG_CONFIG_PATH "$OPENSSL_DIR/lib/pkgconfig"
#   - combine both:
set -gx LIBRARY_PATH "$OPENSSL_DIR/lib" "$LIBRESSL_DIR/lib" $LIBRARY_PATH

# aliases
# - avoid multiple VS Code icons in "Recent" dock:
alias code='open -b com.microsoft.VSCode'

# - Sensitive
source "$HOME/.dotfiles/support/sensitive.sh"

# - Benny Hill!
source "$HOME/.config/fish/functions/benny-hill.fish"

# iTerm shell integration
# source ~/.iterm2_shell_integration.(basename $SHELL)

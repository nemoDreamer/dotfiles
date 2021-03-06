# Colors
source "$HOME/.dotfiles/support/colors.sh"

# Homebrew
eval (/opt/homebrew/bin/brew shellenv)
# Settings
set BROWSER open
# - Editor
set -g -x EDITOR "code -w"
set -g -x VISUAL "code -w"
# - Bundler
set -g -x BUNDLE_TRAMPOLINE_FORCE 1
# - Go
set -g -x GOPATH $HOME/.gocode
set -g -x PATH "$GOPATH/bin" $PATH
# # - wine
# set -g -x PATH "/Applications/Wine Stable.app/Contents/Resources/start/bin" $PATH
# set -g -x PATH "/Applications/Wine Stable.app/Contents/Resources/wine/bin" $PATH
# - Node.js
set -g -x PATH "./node_modules/.bin" $PATH
# NVM
set -gx NVM_DIR "$HOME/.nvm"
# - Python
set -g -x PYTHONPATH "/usr/local/lib/python2.7/site-packages" $PYTHONPATH
# # - z
# set -g Z_SCRIPT_PATH "$HOME/.dotfiles/support/z/z.sh"
# - Vagrant
set -g -x VAGRANT_USE_VAGRANT_TRIGGERS 1
# - Groovy
set -g -x GROOVY_HOME "/usr/local/opt/groovy/libexec"
# - Ruby
set OPENSSL_DIR (brew --prefix openssl@1.1)
set -g -x RUBY_CONFIGURE_OPTS "--with-openssl-dir=$OPENSSL_DIR"
# - BobTheFish
set -g default_user philip
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
function fish_mode_prompt
end

# # keg-only caveats
# # - sqlite
# set -gx LDFLAGS "-L/usr/local/opt/sqlite/lib"
# set -gx CPPFLAGS "-I/usr/local/opt/sqlite/include"
# set -gx PKG_CONFIG_PATH "/usr/local/opt/sqlite/lib/pkgconfig"
# # - libpg
# set -gx LDFLAGS "-L/usr/local/opt/libpq/lib"
# set -gx CPPFLAGS "-I/usr/local/opt/libpq/include"
# set -gx PKG_CONFIG_PATH "/usr/local/opt/libpq/lib/pkgconfig"
# # - curl-openssl
# set -gx LDFLAGS "-L/usr/local/opt/curl-openssl/lib"
# set -gx CPPFLAGS "-I/usr/local/opt/curl-openssl/include"
# set -gx PKG_CONFIG_PATH "/usr/local/opt/curl-openssl/lib/pkgconfig"
# - openssl
set -g fish_user_paths "/usr/local/opt/openssl@1.1/bin" $fish_user_paths
set -gx LDFLAGS "-L/usr/local/opt/openssl@1.1/lib"
set -gx CPPFLAGS "-I/usr/local/opt/openssl@1.1/include"
set -gx PKG_CONFIG_PATH "/usr/local/opt/openssl@1.1/lib/pkgconfig"

# - Sensitive
source "$HOME/.dotfiles/support/sensitive.sh"

# - Benny Hill!
source "$HOME/.config/fish/functions/benny-hill.fish"

# iTerm shell integration
# source ~/.iterm2_shell_integration.(basename $SHELL)

# Colors
source "$HOME/.dotfiles/support/colors.sh"

# Homebrew
eval (/opt/homebrew/bin/brew shellenv)

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

# - NVM
load_nvm > /dev/stderr

# - Butler
set -gx PATH "/Users/philip/Library/Application Support/itch/apps/butler" $PATH

# # - Python
# set -gx PATH (pyenv prefix)/lib/python3.12/site-packages $PATH
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
#   - combine both:
set -gx LIBRARY_PATH "$OPENSSL_DIR/lib" "$LIBRESSL_DIR/lib" $LIBRARY_PATH

# - Make/build/packages:
set -gx LDFLAGS "-L /opt/homebrew/lib"
set -gx CPPFLAGS "-I /opt/homebrew/include"
set -gx CPLUS_INCLUDE_PATH "/opt/homebrew/include"
set -gx CPATH "/opt/homebrew/include"
# requires `brew install pkg-config`
set -gx PKG_CONFIG_PATH "/opt/homebrew/lib/pkgconfig/"

# aliases
# - avoid multiple VS Code icons in "Recent" dock:
alias code='open -b com.microsoft.VSCode'
alias matrix='unimatrix -af -c blue -s 95'

alias yeet=exit

# `npm` has this, but no `yarn`...:
abbr --add --position anywhere isntall install

# - Sensitive
source "$HOME/.dotfiles/support/sensitive.sh"

# - Benny Hill!
source "$HOME/.config/fish/functions/benny-hill.fish"

# iTerm shell integration
# source ~/.iterm2_shell_integration.(basename $SHELL)

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

set --export SCRIPT_SAY_POSTURE "0"

matrix -w -s 99

# pnpm
set -gx PNPM_HOME "/Users/philip/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

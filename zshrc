# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"                                       # This loads nvm
[ -s "$NVM_DIR/etc/bash_completion.d/nvm" ] && . "$NVM_DIR/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# OpenSSL
export PATH="$(brew --prefix openssl)/bin:$PATH"

# editors
export EDITOR="code -W"
export VISUAL="code -W"

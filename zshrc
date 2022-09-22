# Homebrew
eval "$(/usr/local/bin/brew shellenv)"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/etc/bash_completion.d/nvm" ] && . "$NVM_DIR/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Python / PIP
export PATH="/Users/philipblyth/Library/Python/2.7/bin:$PATH"

# OpenSSL
export PATH="$(brew --prefix openssl)/bin:$PATH"

# editors
export EDITOR=nano
export VISUAL=nano

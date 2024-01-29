# Homebrew
eval $(/opt/homebrew/bin/brew shellenv)

# # rbenv
# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"

# Go
export GOPATH="$HOME/gocode"
export PATH="$PATH:$GOPATH/bin"

# Editor
export VISUAL="code -W"
export EDITOR="code -W"

# Colors
# export TERM=xterm-color # handled by iTerm
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR='Yes'
export LSCOLORS=Exfxcxdxbxegedabagacad

# Aliases
alias ll="ls -l"
alias la="ll -a"

# Prompt
export PS1="[\s-\v] \u > \[$(tput bold)\]\w\[$(tput sgr0)\] \$ "

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# Cargo
export PATH="$HOME/.cargo/bin:$PATH"

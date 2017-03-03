# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Go
export GOPATH="$HOME/gocode"
export PATH="$PATH:$GOPATH/bin"

# Editor
export VISUAL='subl -w'
export EDITOR=$VISUAL

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

#!/usr/bin/bash

if git --version | grep -qi apple; then
  info "Installing GIT"
  brew install git
else
  success "GIT already installed"
fi

# Oh-My-Fish
if [[ ! (omf) ]]; then
  info "Installing omf:"
  curl -L github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish
  omf install
  echo "You might need to open a new terminal for Fish to take effect, and re-run \`omf install\`."
else
  success "omf already installed"
fi

# TIG
if [[ ! (tig) ]]; then
  info "Installing TIG:"
  brew install tig
else
  success "TIG already installed"
fi

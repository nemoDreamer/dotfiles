# Homebrew
if ! command -v brew &> /dev/null; then
  info "Installing Homebrew:"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  info "Updating Homebrew:"
  brew update
fi

# rbenv
if ! command -v rbenv &> /dev/null; then
  info "Installing rbenv:"
  brew install rbenv ruby-build
else
  success "rbenv already installed"
fi

# Fish
fish_shell=$(command -v fish)
etc_shells="/etc/shells"
# - Install
if [[ ! $fish_shell ]]; then
  info "Installing Fish shell:"
  brew install fish
else
  success "Fish shell already installed"
fi
# - Register
if [ ! -n "$(grep $fish_shell $etc_shells)" ]; then
  info "Adding Fish to acceptable shells"
  echo $fish_shell | sudo tee -a $etc_shells >/dev/null
else
  success "Fish already in acceptable shells"
fi
# - Set as default
if [[ $SHELL != $fish_shell ]]; then
  user "Making Fish default shell"
  chsh -s $fish_shell
else
  success "Fish already default shell"
fi

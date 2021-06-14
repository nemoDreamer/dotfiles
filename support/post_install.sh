# GIT
if git --version | grep -qi apple;
then
  info "Installing GIT"
  brew install git
else
  success "GIT already installed"
fi

# Oh-My-Fish
if ! command -v omf &> /dev/null
then
  info "Installing oh-my-fish:"
  curl -L github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish
  omf install
  echo "You might need to open a new terminal for Fish to take effect, and re-run \`omf install\`."
else
  success "oh-my-fish already installed"
fi

# TIG
if ! command -v tig &> /dev/null
then
  info "Installing TIG:"
  brew install tig
else
  success "TIG already installed"
fi

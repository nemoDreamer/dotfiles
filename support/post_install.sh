# Oh-My-Fish
if [[ ! (omf) ]]; then
  info "Installing omf:"
  curl -L github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish
  omf install
  echo "You might need to open a new terminal for Fish to take effect, and re-run \`omf install\`."
else
  success "omf already installed"
fi

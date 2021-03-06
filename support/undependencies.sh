# Re-instate bash
user "Re-instating bash as default shell"; echo ''
bash_shell="/bin/bash"
if [[ $SHELL != $bash_shell ]]; then
  chsh -s $bash_shell
fi


info "You've still got the following dependencies installed:"
echo "
  - brew
    - fish
    - git
    - rbenv
    - ruby-build
    - tig
  - omf
"

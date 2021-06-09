#!/usr/bin/env bash

# Homebrew
if [[ ! (brew) ]]; then
	info "Installing Homebrew:"
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
	info "Updating Homebrew:"
	brew update
fi

# rbenv
if [[ ! (rbenv) ]]; then
	info "Installing rbenv:"
	brew install rbenv ruby-build
else
	success "rbenv already installed"
fi

# Fish
fish_shell="/usr/local/bin/fish"
etc_shells="/etc/shells"
if [[ ! (fish) ]]; then
	info "Installing Fish shell:"
	brew install fish
else
	success "Fish shell already installed"
fi
if [ ! -n "$(grep $fish_shell $etc_shells)" ]; then
	info "Adding Fish to acceptable shells"
	echo $fish_shell | sudo tee -a $etc_shells > /dev/null
else
	success "Fish already in acceptable shells"
fi
if [[ $SHELL != $fish_shell ]]; then
	user "Making Fish default shell"
	chsh -s $fish_shell
else
	success "Fish already default shell"
fi

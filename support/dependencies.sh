#!/usr/bin/env bash

# SublimeText
subl_source="/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl"
subl_target="/usr/local/bin/subl"
if [[ ! -e "$subl_target" ]]; then
	success "Symlinking Sublime Text bin"
	ln -s "$subl_source" "$subl_target"
else
	warn "Sublime Text bin already linked"
fi

# Homebrew
if [[ ! (brew) ]]; then
	info "Installing Homebrew:"
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
	info "Updating Homebrew:"
	brew update
fi

# rbenv
info "Installing rbenv:"
brew install rbenv ruby-build

# Git submodules
info "Initializing git submodules\n"
git submodule init

info "Updating git submodules\n"
git submodule update

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

# TIG
tig_tmp="tig_tmp"
tig_location="/usr/local"
if [[ ! (tig) ]]; then
	info "Installing TIG:"
	git clone git://github.com/jonas/tig.git $tig_tmp
	cd $tig_tmp
	make prefix=$tig_location
	sudo make install prefix=$tig_location
	cd .. && rm-rf $tig_tmp
else
	success "TIG already installed"
fi

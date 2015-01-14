#!/usr/bin/env bash

# SublimeText
subl_source="/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl"
subl_target="/usr/local/bin/subl"
if [[ ! -e "$subl_target" ]]; then
	ln -s "$subl_source" "$subl_target"
else
	echo "$(tput setaf 1; tput smul)Warning$(tput sgr0): Sublime Text already linked"
fi

# rbenv
brew update && brew install rbenv ruby-build

# Git submodules
git submodule init && git submodule update

# Fish
fish_shell="/usr/local/bin/fish"
etc_shells="/etc/shells"
if [ ! -n "$(grep $fish_shell $etc_shells)" ]; then
	echo $fish_shell >> $etc_shells
else
	echo "$(tput setaf 1; tput smul)Warning$(tput sgr0): Fish shell already installed"
fi
if [[ $SHELL != $fish_shell ]]; then
	chsh -s $fish_shell
else
	echo "$(tput setaf 1; tput smul)Warning$(tput sgr0): Fish already default shell"
fi

# TIG
tig_tmp="tig_tmp"
tig_location="/usr/local"
if [[ ! (tig) ]]; then
	git clone git://github.com/jonas/tig.git $tig_tmp
	cd $tig_tmp
	make prefix=$tig_location
	sudo make install prefix=$tig_location
	cd .. && rm-rf $tig_tmp
else
	echo "$(tput setaf 1; tput smul)Warning$(tput sgr0): TIG already installed"
fi
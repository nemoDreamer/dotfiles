#!/usr/bin/env bash

# Re-instate bash
bash_shell="/bin/bash"
if [[ $SHELL != $bash_shell ]]; then
	chsh -s $bash_shell
fi

#!/usr/bin/env bash

source ./support/functions.sh

cutstring="DO NOT EDIT BELOW THIS LINE"

# Remove dependencies

source ./support/undependencies.sh

# Remove symlinks

for name in *; do
  target="$HOME/.$name"
  if [ -e "$target" ]; then
    if [ ! -L "$target" ]; then
      if [ -d $target ]; then
        warn "$target is an existing directory"
      else
        cutline=$(grep -n -m1 "$cutstring" "$target" | sed "s/:.*//")
        if [ -n "$cutline" ]; then
          warn "$target exists but is not a symlink"
        fi
      fi
    else
      success "Removing $target"
      rm "$target"
    fi
  fi
done

#!/usr/bin/env bash

source ./support/functions.sh

cutstring="DO NOT EDIT BELOW THIS LINE"
ignore=" install.sh uninstall.sh README.md .gitignore .gitmodules support "

# Dependencies

source ./support/dependencies.sh

# Create symlinks

for name in *; do
  target="$HOME/.$name"
  if [ -e "$target" ]; then
    if [ ! -L "$target" ]; then
      if [ -d "$target" ]; then
        warn "$target is an existing directory"
      else
        cutline=$(grep -n -m1 "$cutstring" "$target" | sed "s/:.*//")
        if [ -n "$cutline" ]; then
          cutline=$((cutline - 1))
          success "Updating $target"
          head -n $cutline "$target" >update_tmp
          startline=$(sed '1!G;h;$!d' "$name" | grep -n -m1 "$cutstring" | sed "s/:.*//")
          if [ -n "$startline" ]; then
            tail -n $startline "$name" >>update_tmp
          else
            cat "$name" >>update_tmp
          fi
          mv update_tmp "$target"
        else
          warn "$target exists but is not a symlink"
        fi
      fi
    else
      warn "$target is already a symlink"
    fi
  else
    if [[ ! $ignore =~ " $name " ]]; then
      # hiding grep, as shel can't do '-a' w/ executing both sides...
      testing=false
      if [ ! -d "$name" ]; then
        testing=[ -a -n "$(grep "$cutstring" "$name")" ]
      fi

      if [ testing = false ]; then
        success "Copying $target"
        cp "$PWD/$name" "$target"
      else
        success "Symlinking $target"
        ln -s "$PWD/$name" "$target"
      fi
    fi
  fi
done

# Post-install

source ./support/post_install.sh

#!/bin/sh

cutstring="DO NOT EDIT BELOW THIS LINE"

for name in *; do
  target="$HOME/.$name"
  if [ -e "$target" ]; then
    if [ ! -L "$target" ]; then
      cutline=`grep -n -m1 "$cutstring" "$target" | sed "s/:.*//"`
      if [ -n "$cutline" ]; then
        echo "WARNING: $target exists but is not a symlink."
      fi
    else
	    echo "Removing $target"
	    rm "$target"
    fi
  fi
done

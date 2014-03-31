nemoDreamer dotfiles
====================

Bash environment setup

---

## Installation

- Clone repo into directory of your choice (I recommend `~/Library/Scripts/.`)
- Run `./install.sh`

This will symlink dotfiles and all its contents into your `~`.
You can safely run `./install.sh` multiple times to update.

## Usage

- Typing `aliases` will open the aliases file containing your -- for lack of a better word -- aliases.
- `profile` is an alias to edit your symlinked `~/.profile -> ~/.dotfiles/profile`
- Read both these files for more goodies.

## Uninstallation

You can safely uninstall all dotfiles symlinks by running `~/.dotfiles/uninstall.sh`.

## Make your own customizations

Put your customizations at the top of files, separated by "DO NOT EDIT BELOW
THIS LINE."

For example, the top of your `~/.gitconfig` might look like this:

    [user]
      name = Joe Ferris
      email = jferris@thoughtbot.com

    # DO NOT EDIT BELOW THIS LINE

    [push]
      default = current

The top of your `~/.zlogin` might look like this:

    # Productivity
    alias todo='$EDITOR ~/.todo'

    # DO NOT EDIT BELOW THIS LINE

    # recommended by brew doctor
    export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

#!/bin/sh
# Script to copy the latest .bash_aliases file into ~/.dotfiles as ~/.dotfiles/ubuntu.bash_aliases
# Script is ubuntu-specific
cp ~/.bash_aliases ~/.dotfiles/ubuntu.bash_aliases
cd ~/.dotfiles
git add ubuntu.bash_aliases
echo "added ubuntu.bash_aliases to git index"
echo "use git commit to commit it."

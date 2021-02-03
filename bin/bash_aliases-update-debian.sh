#!/bin/sh
# This script updates cp's current .bash_aliases file into dotfiles folder, adds, and does git commit.
cp ~/.bash_aliases ~/.dotfiles/debian/debian.bash_aliases # update to reflect current directory tree
cd ~/.dotfiles/ || exit 0
git add ~/.dotfiles/debian/bash_aliases && git commit 
echo "Added and commited .bash_aliases to ~/.dotfiles/ git repo"
echo "Use git push to push to remote."


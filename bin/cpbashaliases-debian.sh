#!/bin/sh
# This script updates cp's current .bash_aliases file into dotfiles folder, adds, and does git commit.
cp ~/.bash_aliases ~/.dotfiles/debian.bash_aliases # appends "debian" to file name
cd ~/.dotfiles/
git add ~/.dotfiles/debian.bash_aliases && git commit -m 'update debian.bash_aliases'
echo "Added and commited .bash_aliases to ~/.dotfiles/ git repo"
echo "Use git push to push to remote"


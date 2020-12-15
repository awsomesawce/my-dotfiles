#!/bin/sh
# This script updates cp's current .zshrc file into dotfiles folder, adds, and does git commit.
cp ~/.zshrc ~/.dotfiles/debian.zshrc
cd ~/.dotfiles/
git add ~/.dotfiles/debian.zshrc && git commit
echo "copied .zshrc to ~/.dotfiles git repo as debian.zshrc."
echo "Use git push to push to server!"
echo "Have a great day!"


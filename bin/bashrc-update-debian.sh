#!/bin/sh
# This script cp's current .zshrc file into dotfiles folder, adds, and does git commit.
cp ~/.bashrc ~/.dotfiles/debian.bashrc
cd ~/.dotfiles/
git add ~/.dotfiles/debian.bashrc && git commit
echo "copied .bashrc to ~/.dotfiles git repo as debian.bashrc."
echo "Use git push to push to server!"
echo "Have a great day!"


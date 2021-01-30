#!/bin/bash
# This script updates cp's current .zshrc file into dotfiles folder, adds, and does git commit.
cp ~/.zshrc ~/.dotfiles/arch.zshrc
cd ~/.dotfiles/
git add ~/.dotfiles/arch.zshrc
git commit
echo "copied .zshrc to ~/.dotfiles git repo as arch.zshrc."
echo "Use git push to push to server!"
echo "Have a great day!"
exit 0

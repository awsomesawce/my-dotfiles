#!/usr/bin/env bash
# This will show status of the current determined git repos
export DOTDIR=~/.dotfiles
export WSLNOTES=/home/carlc/Documents/wsl-notes
echo "Here is your current status of $DOTDIR and $WSLNOTES."
cd $DOTDIR
git status
cd $WSLNOTES
git status

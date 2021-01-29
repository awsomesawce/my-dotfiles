#!/usr/bin/env bash
# This will show status of the current determined git repos
export DOTDIR=~/.dotfiles
export WSLNOTES=/home/carlc/Documents/wsl-notes
export NODESCHOOL=~/Documents/gitstuff/node-school
# TODO: add if statement to make sure the file or dir is there!
echo "Here is your current status of $DOTDIR, $WSLNOTES, and $NODESCHOOL."
cd $DOTDIR && echo $DOTDIR
git status
cd $WSLNOTES && echo $WSLNOTES
git status
cd $NODESCHOOL && echo $NODESCHOOL
git status
exit 0

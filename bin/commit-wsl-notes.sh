#!/bin/bash
# This is a general script for all distros but the directory is different for each.  Check the distro you want to use this in
echo "this will git add . and git commit for wsl-notes"
cd ~/Documents/wsl-notes || return 0
git add . && git commit
echo "Commit done.  Don't forget to git push to server!"
exit 0

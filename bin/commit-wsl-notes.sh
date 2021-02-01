#!/bin/bash

echo "this will git add . and git commit for wsl-notes"
cd ~/Documents/wsl-notes || return 0
git add . && git commit
echo "Commit done.  Don't forget to git push to server!"
exit 0

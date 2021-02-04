#!/bin/sh
# This is located in Arch's ~/bin folder
# This will test if argument is a symlink
if [ $# -eq 0 ]; then
    echo "Invoke this script with an argument for it to work"
else
    if test -L "$*"; then
	echo "File is symlink"
    fi
fi

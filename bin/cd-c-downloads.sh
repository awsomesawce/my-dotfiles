#!/bin/sh
# This will go ahead and cd to the downloads folder on C in Windows.
# Doesn't work
echo "changing directory to C: Downloads folder."
cd /mnt/c/Users/Carl/Downloads || return
echo "you have arrived!"
exit 0

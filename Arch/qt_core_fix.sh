#!/bin/sh
# This is a fix for libQt5Core on Arch Linux
# These files cannot be read otherwise, which means that
# any program depending on these librarys will not work without this 
# script.

if [ -x /usr/lib64/libQt5Core.so.5 ]; then
        (set -x; strip --remove-section=.note.ABI-tag /usr/lib64/libQt5Core.so.5)
fi

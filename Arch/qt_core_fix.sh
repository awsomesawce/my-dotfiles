#!/bin/sh
# This is a fix for libQt5Core on Arch Linux
# These files cannot be read otherwise, which means that
# any program depending on these librarys will not work without this 
# script.

### TODO: This operation makes it so the file in question becomes a hard-link instead of a symbolic link.  This is a problem.
### When upgrading, it might cause problems.

if [ -x /usr/lib64/libQt5Core.so.5 ]; then
        (set -x; strip --remove-section=.note.ABI-tag /usr/lib64/libQt5Core.so.5)
fi

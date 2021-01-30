#!/usr/bin/env zsh
# This is a test to see if the current shell is a login shell
# This only works in zsh since bash doesn't have the print command.
if [[ -o login ]]; then
    print yes
else
    print no
fi
exit 0

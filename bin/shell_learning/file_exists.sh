#!/bin/sh

if [ -f "$HOME/.dotfiles/bin/$*" ]; then
    echo "File exists in dotbin"
else
    echo "does not exist"
fi
exit 0

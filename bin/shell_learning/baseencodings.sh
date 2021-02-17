#!/usr/bin/env bash

# This is to test out taking user input and coding it in various binary formats.

echo "Welcome to my script!"
echo "What base encoding would you like to use?"
echo "Choices are base64, base32"
read -r pick
if [[ $pick = "" ]]; then
    echo "You haven't typed anything in"
else
    if [[ $pick = "base64" ]]; then
        echo "You picked base64"
        echo "Type in your string: "
        read -r
        echo "Your string converted to base64 is: "
        echo "$REPLY" | base64
    elif [[ $pick = "base32" ]]; then
        echo "You picked base32"
        echo "Type in your string: "
        read -r
        echo "Your string converted to base32 is: "
        echo "$REPLY" | base32
    else
        echo "That is not a choice"
        exit 1
    fi
fi

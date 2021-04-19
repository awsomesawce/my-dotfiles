#!/bin/bash
# a test to get options from a read function

if [[ -n "$ZSH_VERSION" ]]; then
    puts() {
        print -r -- "$*"
    }
else
    puts() {
        printf '%s\n' "$*"
    }
fi

echo "Enter an option"
read option
    case "$option" in
        a) puts "You typed a"
            ;;
        b) puts "You typed b"
            ;;
        *) puts "You typed something else"
            ;;
    esac
    exit 0

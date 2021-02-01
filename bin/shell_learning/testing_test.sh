#!/usr/bin/env bash
# Testing positional parameters

test $# = 1 &&
    case "$1" in
        "hello") echo "you did it!";;
        "world") echo "nice job!";;
        *) echo "everything else";;
    esac
    echo "That's the end"
exit 1

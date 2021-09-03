#!/usr/bin/env bash
# Functions for handling args
# This script is too modular

die() {
    printf '%s\n' "$@"
    return 1
}

#testargs () {
	#if [ "$#" -eq 0 ]; then
	#	echo "$usage" && return 1
	#fi
#}

testargs() {
    # If no args, output usage
    local usage="My other usage message"
    if [ "$#" -eq 0 ]; then
        usage && return 1
    fi
}

usage() {
    # Which usage message will it output?
    if [ -n "$usage" ]; then
        printf '%s\n' "$usage" >&2
    else
        echo "This is the usage message" >&2
    fi
}

main() {
    if [ "$#" -eq 0 ]; then
        local errorlevel=1
        local usage="main usage message
        This is an attempt to create a library that other scripts can use."
        printf '%s\n' "Errorlevel is " "$errorlevel"
        usage
    else
        printf '%s\n' "You typed in some args"
        printf '%s\n' "${@}"
    fi
}

testargs "$@"
main "$@"

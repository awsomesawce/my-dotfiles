#!/bin/bash
# This is a test of the getopts bash builtin
# I had to add the if statement to handle if script was invoked with no arguments.
# The :) option does nothing.
nameOfScript=$(basename "$0")
function usage {
    echo "./$nameOfScript -h --> shows usage"
}
optstring=":ha" # list of args expected in input.
if [ "$#" -eq 0 ]; then
    echo "$nameOfScript: Must supply an argument" # Had to add this statement to prevent it exiting with no error message.
    exit 1
else
    while getopts ${optstring} arg; do
        case ${arg} in
        h)
            echo "Showing usage:"
            usage
            ;;
        a)
            echo "Testing adding an option"
            printf "%s is the name of the script" "$nameOfScript"
            ;;
        :)
            echo "$0: must supply argument to -$OPTARG."
            exit 1
            ;;
        ?)
            echo "Invalid option: -${OPTARG}."
            exit 2
            ;;
        esac
    done
fi
# NOTE: File has been formatted using "shfmt.exe" which is unavailable on Ubuntu apt

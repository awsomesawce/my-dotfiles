#!/usr/bin/env bash

usage="Usage: $0 \"arg1\" \"arg2\" ..."


# This function passes multiple arguments to `npm info`
if [ "$#" -eq 0 ]; then
    echo "$usage" && exit 1
fi
if [[ ( "$1" == "--help" || "$1" == "-h" ) ]]; then
    echo "$0: Pass multiple arguments to npm info" && exit 1
fi
if command -v npm > /dev/null; then
    for i in "${@}"; do # Expand arguments as an array automatically
        echo "Looking up $i"
        command npm info "$i"
    done
else
    echo "Npm command not found" >&2
    exit 1
fi
echo "$0 has succeeded" && exit 0

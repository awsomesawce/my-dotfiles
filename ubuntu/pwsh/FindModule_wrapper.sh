#!/bin/bash
# Using `Find-Module` from bash or similar.

if [[ "$#" -eq 0 ]]; then
    echo "$0 needs args" >&2
    exit 1
fi

FindModulePwsh() {
    if [[ $# -eq 0 ]]; then 
        echo "this needs args" >&2
    else
        pwsh -nop -c "Find-Module $1"
        echo "DONE"
        fi
    return 0; 
}

FindModulePwsh "$1"
exit 0

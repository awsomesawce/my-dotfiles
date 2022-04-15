#!/usr/bin/env bash
# search on scoop for multiple scoop infos
# TODO:  <04-08-22, yourname> #
set -euo pipefail

print_usage() {
    local usage="${0}: search scoop info for multiple args"
    echo "$usage"
}

if [[ $# -eq 0 ]]; then
    print_usage
    exit 1
else
    # If args then loop over them
    echo "=== Starting scoop infos ==="
    for i in $@; do
        scoop info "$i"
    done
    echo "=== Ending scoop infos ===" >&2
    exit 0
fi

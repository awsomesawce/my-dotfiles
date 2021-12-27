#!/usr/bin/env bash
# Handle args
usage="This is the usage message
"

die() {
    printf '%s\n' "$*"
    exit 1
}

testargs() {
    if [[ "$1" == "help" ]]; then
        printf '%s\n' "${usage:-"You typed help"}"
        exit 1
    fi
}

main() {
    local usage="My usage message"
    testargs "$@"
    printf '%s\n' "This should never come up if you type help"
}
main "$@"

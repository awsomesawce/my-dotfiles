#!/usr/bin/env zsh
# Test for opening zsh's help from anywhere
setopt nobeep
setopt errexit
helpDir=/usr/share/zsh/help
usage() {
    print "
    Usage: $(basename $0) \"help topic\"
    Or type \"list\" to list the help topics.
    Completion coming soon.
    "
}
if [[ $# -eq 0 ]]; then
    usage
elif [[ "$*" == "list" ]]; then
    ls "$helpDir"
else
    cat "$helpDir/$*"
fi

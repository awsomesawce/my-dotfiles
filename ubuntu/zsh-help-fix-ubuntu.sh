#!/usr/bin/zsh -f
# NOTE: the reason why this was so slow to load before was because it was not
#       using the `-f` option, which meant `zsh` was loading all the startup files
#       every time the script was executed.
#       The `-f` option makes it so it does not load config files, it just executes the script.
#
# This script has been replaced by the zhelpfix function located in 
# ~/.shell_functions and only loaded when sourced by zsh
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

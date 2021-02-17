#!/usr/bin/env bash

# This is a test for the case operator.

firstmsg="This is the first message.  $0 is the file name."
secondmsg="This is the second message.  $SHELL is the shell you are in."
usage="Usage: $0 [OPTIONS]
This is a test script to see how the case modifier works.
You can use this script as a way to interact with the environment in many ways.
To see the first message, type --msgone
To see the second message, type --msgtwo
To see the status of the dotfiles git repo, type dotstatus"
thishelp="Possible arguments: --msgone, --msgtwo, usage, help, dotstatus"

dotstat() {
    if [ -d ~/.dotfiles ]; then
    cd ~/.dotfiles || exit 1;
    command git status
    else
    echo "does not exist"
    fi
}

if test $# -eq 0; then
    echo "Type \"usage\" to see what this baby can do."
else
    case $1 in
	--msgone) printf '%s\n' "$firstmsg" || exit 1; exit;;
	--msgtwo) printf '%s\n' "$secondmsg" || exit 1; exit;;
	usage) printf '%s\n' "$usage" || exit 1; exit;;
	help) printf '%s\n' "$thishelp" || exit 1; exit;;
	dotstatus) dotstat || exit 1; exit;;
	bashcht) command curl cht.sh/bash || exit 1; exit;;
	*) echo "That was not a command, try again." || exit 1; exit;;
    esac
fi
exit 0

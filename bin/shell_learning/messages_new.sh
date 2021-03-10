#!/usr/bin/env bash

# This is a test for the case operator.
pwshexe="$(which pwsh)"
firstmsg="This is the first message.  $0 is the file name."
secondmsg="This is the second message.  $SHELL is the shell you are in."
thirdmsg="It's time to put in more functionality in this shell script.
I just don't know what kind of functionality I want to add.
My main shell is Powershell, which is a lot different.
Powershell is located here: $pwshexe"
usage="Usage: $0 [OPTIONS]
This is a test script to see how the case modifier works.
You can use this script as a way to interact with the environment in many ways.
To see the first message, type --msgone
To see the second message, type --msgtwo"

if test $# -eq 0; then
    echo "Type \"usage\" to see what this baby can do."
else
    case $1 in
	--msgone) printf '%s\n' "$firstmsg" || exit 1; exit;;
	--msgtwo) printf '%s\n' "$secondmsg" || exit 1; exit;;
	usage) printf '%s\n' "$usage" || exit 0; exit;;
        --help) printf '%s\n' "$usage" || exit 0; exit;;
        --msgthree) printf '%s\n' "$thirdmsg" || exit 0; exit;;
    esac
fi
exit 0

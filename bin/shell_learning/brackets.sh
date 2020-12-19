#!/usr/bin/env bash
# testing test arguments
# does not work using sh, not POSIX compliant.
echo "this is to test double brackets."
echo "testing for gitconfig in home directory"
file=~/.gitconfig
if [[ -e $file ]]
then
	echo "~/.gitconfig file exists"
else
	echo "~/.gitconfig does not exist"
fi
echo "thanks for playing"
exit 0

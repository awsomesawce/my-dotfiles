#!/usr/bin/env bash
# testing test arguments
# if given an arguement, else is used.
if [ -z "$1" ]
then
	echo "No command-line arguments."
else
	echo "First command-line argument is $1."
fi

echo "that's it!"
exit 0

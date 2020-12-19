#!/usr/bin/env bash

dir=$1

if cd "$dir" 2>/dev/null; then # "2>/dev/null" hides error message.
	echo "now in $dir."
else
	echo "Can't change to $dir."
fi

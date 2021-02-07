#!/usr/bin/env bash
# script for automatically opening a README file
# no matter what extension
rmfile=README
case $rmfile in

    README.md)
	echo "Reading $rmfile"
	bat README.md
	;;
    README)
	echo "Reading $rmfile"
	bat README
	;;
    readme.md)
	echo "Reading readme.md"
	cat readme.md
	;;
    *)
	echo "No readme file detected"
	;;
esac
exit 0

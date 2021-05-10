#!/usr/bin/env bash
# script for automatically opening a ./README file
# no matter what extension

if [ -x /usr/bin/bat ]; then
	PAGER="bat"
else
	PAGER="${PAGER:=less}"
fi

if [ -r ./README ]; then
    echo "Reading ./README"
    "$PAGER" ./README
elif [ -r ./README.md ]; then
    echo "Reading ./README.md"
    "$PAGER" ./README.md
elif [ -r ./readme.md ]; then
    echo "Reading ./readme.md"
    "$PAGER" ./readme.md
elif [ -r ./README.markdown ]; then
    echo "Reading ./README.markdown"
    "$PAGER" ./README.markdown
elif [ -r ./README.mkd ]; then
    echo "Reading ./README.mkd"
    "$PAGER" ./README.mkd
elif [ -r ./Readme.md ]; then
    echo "Reading ./Readme.md"
    "$PAGER" ./Readme.md
elif [ -r ./README.txt ]; then
    echo "Reading ./README.txt"
    "$PAGER" ./README.txt
else
    echo "No ./readmes in directory"
fi
exit 0


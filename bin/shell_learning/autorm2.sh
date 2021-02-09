#!/usr/bin/env bash
# script for automatically opening a README file
# no matter what extension
if [ -r README ]; then
    echo "Reading README"
    bat README
elif [ -r README.md ]; then
    echo "Reading README.md"
    bat README.md
elif [ -r readme.md ]; then
    echo "Reading readme.md"
    bat readme.md
elif [ -r README.markdown ]; then
    echo "Reading README.markdown"
    bat README.markdown
elif [ -r README.mkd ]; then
    echo "Reading README.mkd"
    bat README.mkd
elif [ -r Readme.md ]; then
    echo "Reading Readme.md"
    bat Readme.md
elif [ -r README.txt ]; then
    echo "Reading README.txt"
    bat README.txt
else
    echo "No readmes in directory"
fi
exit 0

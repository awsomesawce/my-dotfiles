#!/bin/sh
# Simple script to combine git add . and git commit
echo "This script will add all modified files to index and commit the index"
git add .
git commit
echo "Done!"
echo "Thanks for using this script and have a great day!"
exit 0

#!/bin/bash
# Find out if the same file exists in both directories

echo "Enter a name of a file: "
read -r file

for something in $file; do
    ls . | grep "$file"
    done

#!/usr/bin/env bash
# Contains rewrites of old functions/scripts
# Author: Carl Capodice
# Date: Sat Sep  4 16:13:58 EDT 2021

readmeDirTwo () {
    local help="Usage: readmeDirTwo directory
    If argument is a directory and contains a README.md file, open the file in the pagecommand"
    if [ "$#" -eq 0 ]; then
        echo "$help" && return 1
    fi
    # pagecommand contains either bat.exe, or less
    local pagecommand=$(if command -v bat.exe > /dev/null; then echo "bat.exe"; else echo "less"; fi)
    # myrm contains the readme file or an empty string.
    local myrm=$([ -r "${1}/README.md" ] && echo "${1}/README.md")
    echo "Page command is $pagecommand"
    echo "myrm is $myrm"
    # can be rewritten as `if [[ -z "$myrm" ]]`
    if [[ "$myrm" != "" ]]; then
        eval "$pagecommand $myrm"
    fi
    return 0
}

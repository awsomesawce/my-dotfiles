#!/bin/bash
# Copies file to both ubuntu dotfiles directory and onedrive

scriptName=$(basename "$0")
argOne="$1"

makedirlist() {
    if [[ -d "$HOME/test/dir1" ]] && [[ -d "$HOME/test/dir2" ]]; then
        dirlist=( "$HOME/test/dir1" "$HOME/test/dir2" )
        echo "set ${dirlist[@]}"
    else
        echo "dirs not found"
    fi
}
usage() {
    echo "Usage: $scriptName file_to_copy"
}

makesure() {
    if (command -v cp > /dev/null); then
        echo "copy executable is there"
        copyexe="command cp -i"
        echo "$copyexe set"
    else
        echo "cp command is not there"
    fi
}

copyfiles() {
    for dir in ${dirlist[@]}; do
        echo "copying $argOne to $dir"
        eval "$copyexe" "$argOne" "$dir" && echo "cp files done" || echo "there was a problem"
    done
}

if [[ $# -ne 0 ]]; then
    makesure
    makedirlist
    copyfiles
    if [[ "$argOne" == "none" ]]; then
        echo "You typed $argOne"
    else
        echo "you did not type \"none\""
    fi
else
    usage
fi

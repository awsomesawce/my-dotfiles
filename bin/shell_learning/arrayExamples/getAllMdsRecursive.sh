#!/usr/bin/env bash
# Author: Carl C.
# Date: Thu 27 May 2021 08:27:03 PM EDT
# OriginalLocation: ~/.dotfiles/bin/shell_learning/arrayExamples/getAllMdsRecursive.sh
# Notes: Untested on Bash.  Needs extended globbing functionality to work.

setopt extendedglob
setopt dotglob

getMDFiles() {
    typeset -a mdFiles
    typeset -a resolvedMdFiles
    mdFiles=($(ls **/*.md)) # Gets every .md file recursively and stores into array var.
    # This is fine, but what if we want the full pathname of each file, like we get in **Powershell**?
    resolvedMdFiles=($(\
        for i in ${mdFiles[@]}; do
            echo "$PWD/$i"
        done
        ))
        # The resolvedMdFiles variable now has each *.md file indexed separately in the array
        #+ with their full pathname intact.
}

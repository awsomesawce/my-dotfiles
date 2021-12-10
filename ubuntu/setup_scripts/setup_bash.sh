#!/usr/bin/env bash
# Bash setup for new installations

echo "Setup bash commencing"

set PAGER=less
set EDITOR=vim

usage() {
    if [[ $# -eq 0 ]]; then
        printf '%s\n' "Need args for this script to work"
        return 1
    fi
}

rename_file_to_old() {
    usage
	if [[ -f "$1" ]]; then
	    command mv "$1" "$1_old"
	fi
}

if [[ -f ~/.bashrc ]]; then
    mv ~/.bashrc ~/.bashrc_old
fi


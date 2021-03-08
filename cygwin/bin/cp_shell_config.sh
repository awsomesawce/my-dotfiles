#!/bin/bash
# script to copy config files into respective directories
# Remember to copy this script too
oneDrive="/cygdrive/d/Carl/OneDrive"
cygdotback="$oneDrive/dotfiles_backup/cygwin/newconfig"
cyghome='/home/Carl'
winhome='/cygdrive/c/Users/Carl'
# config file variable definitions
bashrc="$cyghome/.bashrc"
bashaliases="$cyghome/.bash_aliases"
bashprofile="$cyghome/.bash_profile"
exports="$cyghome/.exports"
cygprofile="$cyghome/.profile"
cyginit="$cyghome/.cyginit"
winzshrc="$winhome/.zshrc"

# TODO: Use arrays instead of flat out variables, or keep variables in a different file and source it.

bashconfig=("$bashrc" "$bashaliases" "$bashprofile")
zshconfig=("$winzshrc" "$cyghome/.zsh_aliases" "$cyghome/.zshenv")

# TODO: convert these one liners to standard if statements.
[[ -r "$bashrc" ]] && \
cp -i "$bashrc" "$cygdotback" || exit 1
#[[ -r "$bashaliases" ]] && echo "bash_aliases exists and is readable" || exit 1
if [ -r "$bashaliases" ]; then
    echo "copying $bashaliases"
    command cp -i $bashaliases "$cygdotback" || exit 1
else
    echo "Bash alias file $bashaliases not found"
fi

# TODO: replace "command cp -i" with a function or alias
[[ -r "$bashprofile" ]] && command cp -i "$bashprofile" "${cygdotback}" || echo "$bashprofile unreadable or not found."
[[ -r "$exports" ]] && command cp -i "$exports" "${cygdotback}" || echo "$exports not found or readable."
[[ -r "$winzshrc" ]] && command cp -i "$winzshrc" "${cygdotback}" || echo "$winzshrc not there or readable"
[[ -r "$cyginit" ]] && command cp -i "$cyginit" "${cygdotback}" || echo "$cyginit not found."

echo "So far Ive added $bashrc , $bashaliases , $bashprofile , $exports , $winzshrc , $cyginit to the script.  More to come"
exit 0

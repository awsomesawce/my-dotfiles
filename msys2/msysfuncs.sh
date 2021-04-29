#!/usr/bin/env bash
# MSYS2-specific functions
# Put all msys-specific functions in this file

# Ideas for functions: 
# One that conditionally loads an env file depending on whether I'm in zsh or bash.

# This one just lists all files in a directory


weirdlister() {
    local weirdlist=($(ls -F ~/bin/))
    local yesans="y"
    local noans="n"
    for i in ${weirdlist[@]}; do
        echo "File is $i"
    done
    echo "Would you like to see what \$weirdlist[@] contains?
    Type y or n"
    read -r
    if [[ $REPLY -eq "y" ]]; then
        echo "Here it is: ${weirdlist[@]}"
    else
        echo "Ok"
    fi
    # echo "Would you like that array to be exported globally?  y or n"
    # read -r
    # if [[ "$REPLY" = "n" ]]; then
    #     echo "ok"
    # else
    #     export weirdlist
    # fi
}

listmycommands() {
    for comm in ${commandsExtra[@]}; do
        printf '%s\n' "$comm"
    done
}
commandsExtra+=("listmycommands" "weirdlister")

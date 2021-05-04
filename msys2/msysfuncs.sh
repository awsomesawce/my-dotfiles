#!/usr/bin/env bash
# MSYS2-specific functions
# Put all msys-specific functions in this file

# Ideas for functions: 
# One that conditionally loads an env file depending on whether I'm in zsh or bash.

# Let the user know that these functions are ready to go!

tellUser() {
echo "MSYS funcs loaded from msys dotfile git repo
Try \"listmycommands\" to see what commands are available"
}
tellUser

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

chtsh() { 
    if [ $# -eq 0 ]; then 
	echo "Usage: $0 term"
	echo "term is any term you want to look up on chtsh"
    else
	if [[ -x /usr/bin/curl ]] || [[ -x /bin/curl ]]; then
	    curl "https://cht.sh/$1" || exit 1
	else 
	    echo "Curl is not installed" 
	fi
    fi 
}

listmycommands() {
    for comm in ${commandsExtra[@]}; do
        printf '%s\n' "$comm"
    done
}

cp-msys-dotfiles-to-onedrive() {
# placeholder
}
commandsExtra+=("listmycommands" "weirdlister" "chtsh")

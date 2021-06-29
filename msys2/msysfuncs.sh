#!/usr/bin/env bash
# MSYS2-specific functions
# Put all msys-specific functions in this file

# Ideas for functions: 
# - [x] One that conditionally loads an env file depending on whether I'm in zsh or bash.

# Let the user know that these functions are ready to go!

tellUser() {
    echo "MSYS funcs loaded from msys dotfile git repo
    Try \"listmycommands\" to see what commands are available"
}
tellUser

# This one just lists all files in a directory

weirdlister() {
    local weirdlist=($(ls -F ~/bin/))
    local possibleAnswers=("y" "n")
    for i in ${weirdlist[@]}; do
        echo "File is $i"
    done
    echo "Would you like to see what \$weirdlist[@] contains?
    Type y or n"
    read -r
    if [[ $REPLY -eq "y" ]]; then
        echo "Here it is: ${weirdlist[@]}"
    else
        echo "Returning..."
	return 1
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
	    command curl "https://cht.sh/$1" || exit 1
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

commandsExtra=("listmycommands" "weirdlister" "chtsh" "cheatsheet-new" "duks")

duks() {
    if [ $# -eq 0 ]; then
	echo "Usage ${0} term_to_search"
    else
	if [[ -x /usr/bin/start ]]; then
	    start "https://www.duckduckgo.com/?q=$*"
	else
	    echo "Something went wrong" 2>&1
	fi
    fi
}

pyhelp() {
    [ $# -eq 0 ] && {
        echo "Usage $0 help_term"
        return 1
    } || {
        python -c "help($*)"
    }
}

# End of msysfuncs.sh

expr1="curl $csURI"
# This works the same as if using expr before it

# This is the recommended function for which as recommended by which(1)
mywhich () { 
    ( alias; declare -f ) | which --tty-only --read-alias --read-functions --show-tilde --show-dot "$@"
}
pyhelpmore () {
	if [ $# -eq 0 ]
	then
		cat <<_EOF && return 1
Usage: pyhelpmore name_of_module
_EOF
	else
		echo "looking up $*"
		python -c "import $*; help ($*)"
	fi
	return 0
}

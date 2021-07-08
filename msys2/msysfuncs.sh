#!/usr/bin/env bash
# MSYS2-specific functions
# Put all msys-specific functions in this file

# Ideas for functions: 
# - [x] One that conditionally loads an env file depending on whether I'm in zsh or bash.

# Let the user know that these functions are ready to go!

# Initialize commandsExtra array variable.
typeset -agx commandsExtra
typeset -agx bashCommandsExtra

tellUser() {
    echo "MSYS funcs loaded from msys dotfile git repo
The line number is $LINENO
Try \"listmycommands\" to see what commands are available"
}
tellUser
# This is the recommended function for which as recommended by which(1)

if [[ "$BASH_ARGV0" =~ "bash" ]]; then # This will for sure detect whether bash is in use or not.
    mywhich () {
        ( alias; declare -f ) | which --tty-only --read-alias --read-functions --show-tilde --show-dot "$@"
    }
    loadmingw ()
    {
        if [[ -x /usr/bin/shell ]]; then
            source shell mingw64 || return 1;
        else
            echo "/usr/bin/shell not found" 2>&1;
        fi;
        return 0
    }
# This function goes back into msys mode unless it is already in msys mode.
# Among other things, MSYS mode outputs LF instead of CRLF, has /usr/bin at front of PATH, etc.
    loadmsys ()
    {
        if [[ "$MSYSTEM" != "MSYS" ]] && [[ -x /usr/bin/shell ]]; then
            source shell msys
        else
            echo "You are already in msys mode" 1>&2 # Does this output to error stream? NOTE
            return 2
        fi
    }
bashCommandsExtra=("mywhich" "loadmingw" "loadmsys")
typeset -A myCommandsDescriptions
myCommandsDescriptions=(["mywhich"]="This is the recommended way to use which by looking at the manpage"\
    ["loadmingw"]="This function simply does \"source shell mingw64\" for me.  I could make it into a short alias"\
    ["loadmsys"]="This function simply does \"source shell msys\" to go back into msys mode.")

#commandsExtra=("mywhich")
fi

# This one just lists all files in a directory

weirdlister() {
    local weirdlist=($(ls -F ~/bin/))
    for i in "${weirdlist[@]}"; do
        echo "File is $i"
    done
    echo "Would you like to see what \$weirdlist[@] contains?
    Type y or n"
    read -r
    if [[ "$REPLY" =~ "y" ]]; then
        echo "Here it is: ${weirdlist[*]}"
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
        if command -v curl > /dev/null; then
            command curl "https://cht.sh/$1" || exit 1
        else 
            echo "Curl is not installed" 
        fi
    fi 
}


commandsExtra=(\
    "listmycommands"\
    "weirdlister"\
    "chtsh"\
    "cheatsheet-new"\
    "duks"\
    "pyhelp"
)

listmycommands() {
    for comm in "${commandsExtra[@]}"; do
        printf '%s\n' "$comm"
    done
    echo "Bash extra commands: ${bashCommandsExtra[*]}"
}

duks() {
    if [ $# -eq 0 ]; then
        echo "Usage ${0} term_to_search"
        echo "From \$LINENO $LINENO"
    else
        if [[ -x /usr/bin/start ]]; then
            start "https://www.duckduckgo.com/?q=$*"
        else
            echo "Something went wrong" 2>&1
            return 1
        fi
    fi
    return $?
}

pyhelp() {
    [ $# -eq 0 ] && {
        echo "Usage $0 help_term"
        return 1
    } || {
        python -c "help($*)"
        return 0
    }
}




pyhelpmore () {
    if [[ $# -eq 0 ]] || [[ "$0" =~ ^(-h|--help)$ ]]
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

# End of msysfuncs.sh

# I thought I had made this function already, but here it is.
# This tells you what type of executable is on path.
filewhich () 
{ 
    if [[ -z "$1" ]] || [[ "${1}" =~ ^(-h|--help)$ ]]; then
        printf '%s\n' "Usage: filewhich exe_name";
        return 1;
    fi;
    if [[ $# -gt 0 ]]; then
        file $(which "$1");
    fi
}
alias filew=filewhich # Alias for filewhich

cp_projvars () 
{ 
    if [[ -f ~/.projectVars ]] && [[ -d ~/gitstuff/my-dotfiles/msys2 ]]; then
        cp -i ~/.projectVars ~/gitstuff/my-dotfiles/msys2/;
    else
        echo "ProjectVars or destination dir is missing" 2>&1;
    fi
}


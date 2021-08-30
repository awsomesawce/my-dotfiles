#!/usr/bin/env bash
# Displaying colors on the terminal using bash
# Taken from lua configure script!

echo_n() {
   printf "%s" "$*"
}

bold='\033[1m'
red='\033[1;31m'
green='\033[1;32m'
blue='\033[1;36m'
reset='\033[0m'

BOLD() {
   printf "$bold%s$reset" "$*"
}

RED() {
   printf "$red%s$reset" "$*"
}

GREEN() {
   printf "$green%s$reset" "$*"
}

BLUE() {
   printf "$blue%s$reset" "$*"
}

testing() {
    BOLD "This is a test"
    echo
    RED "This should be red"
    echo
    GREEN "This should be green"
    echo
}

testing
echo_n "yoyoyo"

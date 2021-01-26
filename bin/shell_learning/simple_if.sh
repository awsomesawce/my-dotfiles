#!/bin/bash
# Simple example of an if statement
# From linuxhint.com
# Added user input
echo "Enter a number: "
read n
if [ "$n" -lt 10 ]; then
    echo "It is a one digit number"
else
    echo "It is a two digit number"
fi
exit 0

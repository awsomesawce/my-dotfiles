#!/bin/bash
# Example of for
# Will count down from 10 to 0 with no newline
# because echo has a -n flag
for (( counter=10; counter>0; counter-- ))
do
    echo -n "$counter "
done
printf "\n"
exit 0

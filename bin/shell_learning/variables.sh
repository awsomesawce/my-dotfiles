#!/bin/bash

echo "$uninitialized" # nothing
(( uninitialized += 5 ))
echo "$uninitialized" # 5

#a=$(ls -l)
#echo $a
#echo
#echo "$a"

a=(one two three)
echo "$a"
echo $a
echo "$a[2]"
b=("one" "two" "three")
echo "$b"
echo $b
echo "$b[2]"
c=(["one","two","three"])
echo "$c"

exit 0

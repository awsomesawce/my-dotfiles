# This is a function for invoking which.
# Taken from (info which) example
# This will print the readable ~/ and ./ when starting which from your
#prompt, while still printing the full path when used from a script:
#
#     > which q2
#     ~/bin/q2
#     > echo `which q2`
#     /home/carlo/bin/q2
which ()
     {
       (alias; declare -f) | /usr/bin/which --tty-only --read-alias --read-functions --show-tilde --show-dot $@
     }
export -f which

#!/usr/bin/env zsh
# This is a demonstration on how local variables only exist inside their current scope.

variable=outside
function awesome {
    local variable=inside
    print "I am $variable with arguments $@"
}
awesome this and that
print "I am $variable"
exit 0

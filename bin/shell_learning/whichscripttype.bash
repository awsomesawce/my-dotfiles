#!/usr/bin/env bash
# This is a neat little script that detects the type of script by
# looking at the first line of the file, which usually has the 
# `hashbang' `#!' pointing to the interpreter.

headtest () 
{ 
    a="head --lines=1";
    b="$1";
    c='#!/bin/sh';
    if [[ $(eval "$a $b") == "$c" ]]; then
        echo "File is a /bin/sh script";
    else
        if [[ $(eval "$a $b") == '#!/bin/bash' ]]; then
            echo "File is a /bin/bash script";
        else
            if [[ $(eval "$a $b") == '#!/usr/bin/env bash' ]]; then
                echo "This file is a /usr/bin/env bash script";
            else
                echo "I do not know";
            fi;
        fi;
    fi
}


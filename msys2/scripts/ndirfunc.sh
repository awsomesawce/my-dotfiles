#!/bin/sh
# Simply switch to Notable notes directory

ndir () 
{ 
    if [[ -d "$OneDrive/Notable/notes" ]]; then
        cd $OneDrive/Notable/notes
    else
        echo "Notable notes not found" 2>&1
        return 1
    fi
}
ndir

#!/bin/bash
# Actually copy the files

[ -r lib/FILEVARS.sh ] && . lib/FILEVARS.sh

[ -r $INITVIM ] && {
    echo "Copying $INITVIM to $INITVIM_GIT"
    cp -i -v "$INITVIM" "$INITVIM_GIT"
}

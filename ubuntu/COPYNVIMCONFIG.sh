#!/bin/sh
# Copy nvim config from one location to the other

if test -r lib/FILEVARS.sh; then
    . lib/FILEVARS.sh
else
    echo "ERROR: lib/FILEVARS.sh not found" >&2
fi

if [ -r "$INITVIM" ]; then
    echo "\$INITVIM is $INITVIM"
fi
[ -r "$INITVIM_GIT" ] && {
    echo "\$INITVIM_GIT is $INITVIM_GIT"
}

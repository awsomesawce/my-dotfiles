#!/bin/bash

cyghome=/home/Carl
winhome=/cygdrive/c/Users/Carl
onedrive=/cygdrive/d/Carl/OneDrive
cyginit="$cyghome/.cyginit"
destdirone="$onedrive/dotfiles_backup/cygwin"
destdirtwo="$winhome/gitstuff/my-dotfiles/cygwin"


echo "Copying $cyginit to other dirs"

if [ -r "$cyginit" ]; then
  echo "Attempting to copy to $destdirone and $destdirtwo"
  if [ -d "$destdirone" ]; then
    echo "copying $cyginit to $destdirone"
    command cp -i "$cyginit" "$destdirone"
  else
    echo "$destdirone not found or is not a directory"
    exit 1
  fi
  if [ -d "$destdirtwo" ]; then
    echo "copying $cyginit to $destdirtwo"
    command cp -i "$cyginit" "$destdirtwo"
  else
    echo "$destdirtwo not found or is not a directory"
    exit 1
  fi
else
  echo "$cyginit not found or is not readable"
fi
 

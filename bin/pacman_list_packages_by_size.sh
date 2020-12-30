#!/bin/bash
## Taken from cht.sh/pacman
## Lists packages by size

pacman -Qq | pacman -Qi - | egrep '(Size\s+:|Name\s+:[^s])' | sed -E 's/ ([KM])iB/\1/' | sed -z 's/\nInstalled/ /g' | perl -pe 's/(Name|Size) *: //g' | column -t | sort -hk2 -r | cat -n | tac

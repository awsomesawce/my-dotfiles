#!/usr/bin/env -S pwsh -noprofile
<#
.Description
Copys all msys2 scripts in ~/bin to this folder.
.NOTES
Uses `/` unix style path separators instead of backslashes.
Works just find in modern Powershell.
#>

$source = get-ChildItem ~/bin/msys*, ~/bin/mbash*, ~/bin/pwsh*, ~/bin/mzsh*
copy-item $b ~/gitstuff/my-dotfiles/msys2/scripts

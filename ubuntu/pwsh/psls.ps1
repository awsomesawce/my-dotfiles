#!/usr/bin/env -S pwsh -noprofile
<#
.Description
A simple wrapper around Get-ChildItem so that it is easier to type in.
.NOTES
The `ls` alias for Get-ChildItem is not active on pwsh linux by default.
This is so `/usr/bin/ls` can still be invoked.
Truthfully, Get-ChildItem is much more powerful than `ls`.
#>
param(
[Parameter(Mandatory = $false)]
[string]
$Path
)
if ($Path) {
Get-ChildItem "$Path"
} else {
Get-ChildItem
}


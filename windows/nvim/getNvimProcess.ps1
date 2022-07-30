function Get-NvimProcess {
[CmdletBinding()]
param([switch]$GetVim)
if ($GetVim) {
return Get-Process *vim*
}
Get-Process *nvim*
}

Get-NvimProcess $args


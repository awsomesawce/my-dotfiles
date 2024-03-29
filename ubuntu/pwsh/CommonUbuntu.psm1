#!/usr/bin/env -S pwsh -nop
# Powershell common functions for Ubuntu

$CommonUbuntuLoaded = $true

function gitst {
    <#
    .SYNOPSIS
    Git status
    #>
    if (!(Get-Command git)) { throw "Git not installed" }
    return git status
}

function Get-AllChildItem {
<#
.Description
In Linux, Get-ChildItem does not list .dotfiles by default.
This function acts like ls -alhF
.PARAMETER Path
The file path to get the child items of
#>
param([string]$Path)
if ($Path) {
    $local:x = (Get-ChildItem $Path) && (Get-ChildItem -Hidden $Path)
    return $x
}
else {
    $local:x = (Get-ChildItem), (Get-ChildItem -Hidden)
    return $x
}
}
New-Alias -Name "gcia" -Value "Get-AllChildItem" -Description "Gets all files including dotfiles"
New-Alias -Name "sel" -Value "Select-Object" -Description "Even shorter than select"

Export-ModuleMember -Function @("Get-AllChildItem", "gitst") -Alias @("gcia", "sel")

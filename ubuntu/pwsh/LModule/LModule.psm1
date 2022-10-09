#!/usr/bin/env -S pwsh -noprofile
# A gathering of commonly used Linux-flavored powershell commands/functions

$ROOT_DIR = $PSScriptRoot

. $ROOT_DIR/Public/LModule_one.ps1

Export-ModuleMember -Function @("Test-isBashScript")

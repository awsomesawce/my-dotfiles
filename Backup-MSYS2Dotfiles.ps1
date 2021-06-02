function backup-msys2dotfiles {
<#
.Description
Short and sweet backup script using Compress-Archive for
backing up MSYS2 config separately and concisely.
.NOTES
Only works in Powershell Core because of the use of ternary operators.
No parameters, but customzation is entirely possible with a little work.
Might change the destination directory
.Author
Carl Capodice
.License
MIT/X11

((Test-Path $dotfileDirs[0]) -and (Test-Path "$env:myDotfiles\msys2")) ? (Compress-Archive -Path "$env:myDotfiles\msys2\" -DestinationPath "$($dotfileDirs[0])\msys2\msys-df-backup.zip" -Update -Verbose) : (Write-Error "Directory not found")
Write-Output "Operation succeeded"
return

}

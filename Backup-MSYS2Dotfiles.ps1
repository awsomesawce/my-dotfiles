function Backup-MSYS2Dotfiles {
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
#>
Process {
    $destdir = "$env:OneDrive\dotfiles_backup\msys2\bkup_archives"
    $CAParams = @{
	Path = "$env:myDotfiles\msys2"
	DestinationPath = "$destdir\MSYS2-DF-Backup_$(Get-Date -Format FileDate).zip"
	Update = $true
	Verbose = $true
    }
    # Test if dirs exist.
    ((Test-Path $dotfileDirs[0]) -and (Test-Path "$env:myDotfiles\msys2")) ? `
    (Compress-Archive @CAParams) : `
    (Write-Error "One or both directories not found")
    Write-Output "Operation succeeded"
return
}

}

Backup-MSYS2Dotfiles

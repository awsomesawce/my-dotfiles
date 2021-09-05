#!/usr/bin/pwsh
<#
.Description
Linux Pwsh Profile
#>
# This is my first attempt at writing a proper Powershell profile (ppp) in __Linux__.

$PwshDotfilesLocation = (Get-Item ~/.dotfiles/ubuntu/pwsh).FullName

# Import necessary modules
Import-Module posh-git # This works on pwsh core on linux.  Yay!
Import-Module "$PwshDotfilesLocation/CommonUbuntu.psm1"

if ($env:PAGER -eq "less") {
    Write-Output "less is the pager"
} else {
    Write-Output "Changing pager to less"
    set-item Env:/PAGER "less"
}

Write-Host -ForegroundColor Yellow "Welcome to Powershell Core on Ubuntu/WSL!"
$VimAddons = "/var/lib/vim/addons"

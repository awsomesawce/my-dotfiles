function makesurepwshconfig {
<#
.Description
Returns true if pwsh config dir is found
#>

param(
    [string]
    $Path = "/home/carlc/.config/powershell"
)
if (Test-Path $Path) {
    return $true
}
else {
    return $false
}
}
function makesurepwshprofile {

<#
.Description
Makes sure powershell profile exists
#>
if (Test-Path $profile) {
    return $true
}
else {
    return $false
}

}

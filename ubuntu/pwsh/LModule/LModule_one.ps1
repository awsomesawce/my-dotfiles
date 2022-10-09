
function Test-isBashScript {

    <#
.Description
Tests if provided file is a bash script by seeing if
first line contains the word 'bash'
.NOTES
TODO: Add extension detection and raise True if extension is .bash or .sh

**From UtilFuncs.psm1 on Windows**
#>
    [cmdletbinding()]
    param(
        [string]$File
    )
    if ($File -and (Test-Path $File)) {
        return (Get-Content -TotalCount 1 -Path $File).Contains("bash")
    }
    else {
        Write-Error "Either the path is bad or you did not enter an arg"
    }

}

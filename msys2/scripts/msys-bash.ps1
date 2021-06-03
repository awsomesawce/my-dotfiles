# This file will start msys's version of bash
# OriginalLocation: "$env:USERPROFILE\bin"
# This file is meant to be teamed up with the "msysbashpwsh.bat" file.  That is where the env variables are set.
# That file needs to be in the same directory if possible.

$Script:msysbash = Get-Command $env:msysbashexe
$writehostargs = @{
    ForegroundColor = "cyan"
}

# I know this might not be the best way to do it.
if ($args) {
    write-host @writehostargs "invoking msys bash with -l and -i options"
    Write-Host @writehostargs "with args"
    & $Script:msysbash -l -i -c "$args"
} elseif (!($args)) {
    & $Script:msysbash -l -i "$args"
} else {
    Write-Error "Not starting msys bash"
}

return "Thats it!"

<#
.SYNOPSIS
Get all profiles in a concise pscustomobject
.DESCRIPTION
Simply gets all the noteproperties of the `$profile` variable and outputs it
as an object!
#>

$allProfiles = $profile | gm -MemberType NoteProperty | foreach {
    @{$_.Name = "$($profile.$($_.Name))"}
}

return $allProfiles


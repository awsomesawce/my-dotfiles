function backup-myDotfilesAll {

<#
.Description
Use Git-Archive to back up in different formats
#>
param([switch]$All, [switch]$Move)
if (Test-Path .\.git\) {
    Write-Verbose "Determined this is a git repo
Backing up using `"git-archive`""
    if (Get-Command git -ErrorAction ignore) {
        # Create multiple types of archives.
        # If user selects $All, make all types
        # Else just `zip` format.
        if ($All) {
            <#
If using git-archive on windows, it uses the base version of tar installed
on Windows systems, which only has zlib compression library attached.
This means only tar.gz is available unless you link git-archive to a 
different tar program.
You can always just create a tarfile and separately compress it with
a different program.
#>
            $formats = @("zip", "tar.gz"<#, "tar.xz", "tar"#>)
        }
        else {
            $formats = "zip"
        }
        foreach ($fmt in $formats) {
            # Date the output
            git archive -o "MyDotfilesGit-$(Get-Date -Format FileDate).$fmt" HEAD
        }
        if ($Move) {
            Write-Error -Category NotImplemented "Check back later"
        }
    }
    else { Write-Error -Category NotInstalled "Need git installed" }
}
else { return Write-Error "Not a git repository" }

}

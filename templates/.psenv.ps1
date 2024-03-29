#!/usr/bin/env -S pwsh -noprofile
#Requires -PSEdition Core
# PSenv file for Nodejs projects
# OriginalLocation: https://github.com/awsomesawce/my-dotfiles/templates/.psenv.ps1
# CanonicalLocation: https://github.com/awsomesawce/my-dotfiles/templates/.psenv.ps1.

# Functions relating to npm dev workflow

function findmoduledocs {
    <#
    .Description
    If a docs folder exists in a node module, list
    the contents of it.
#>
    switch (Test-Path ".\node_modules\$args\docs") {
	$true { Get-ChildItem ".\node_modules\$args/docs" }
	$false { "It is not there" }
    }
}

function Page-Readme {
    <#
    .Syntax
    Page-Readme [npm-package-name]
    .Description
    Opens readme of any npm-installed package in node_modules folder, as long
    as it is "README.md"
    .NOTES
    Works like a pydoc for local nodejs projects
    Can be rewritten as a `foreach` loop.
#>
    param([string[]]$dir)
    $x = if (test-path "./node_modules/$dir/README.md") {$(Get-Item "./node_modules/$dir/README.md").FullName}
	else {Write-Error "Could not find README.md"}

    if ($dir) {
	if (Test-Path $x) {
	    if (Get-Command bat -ErrorAction ignore) {
		# If bat pager is found use that, else use less.
		bat "$x"
	    } elseif (Get-Command less -ErrorAction ignore) {
		less "$x"
	    } else {
		Write-Host -ForegroundColor Yellow "Compatible pager program not found on PATH.  Using Powershell pager."
		Get-Content "$x" | out-host -Paging
	    }
	}
	else {
	    Write-Error "$x not found"
	}
    }
    else {
	Write-Error "Page-Readme needs an argument for it to page readmes.  Try again :)"
    }
}

# Initialize pkgjson variable
$pkgjson = if (test-path package.json) {
    Get-Content package.json | convertfrom-json -AsHashtable
} else {
    Write-Error "package.json not found, not initializing `$pkgjson var"
}

($pkgjson) ? (Write-Host -ForegroundColor "Cyan" "package.json info available in the variable `$pkgjson") : ( `
    Write-Host -ForegroundColor darkcyan "`$pkgjson not initialized")

# initialize and source npm-functions
if (!($scrps)) {$scrps = "~/gitstuff/scripts-pwsh"}
$nfile = "$scrps/ScriptsAndFunctions/npm-functions.psm1"
$npmfuncs = (test-path $nfile) ? ($nfile) : (Write-Error "npm-funcs file not found")
write-verbose "Importing $npmfuncs"
Import-Module "$npmfuncs" -Verbose

# If getNodeInfo exists, set alias to it rather than including as a function.
if (test-path .\scripts\getNodeInfo.ps1) { # FIXME: Where is this file??
set-alias -Name getNodeInfo -Value ".\scripts\getNodeInfo.ps1" -Description `
"Node info returned as a hashtable" -Option None
}
function Write-Cyan {
    param([string]$msg)
    if($msg){
    return Write-Host -ForegroundColor "Cyan" "$msg"
    } else {
        return Write-Host -ForegroundColor "Cyan"
    }
}
Write-Cyan "Loaded psenv.ps1 file from $($PSScriptRoot)"

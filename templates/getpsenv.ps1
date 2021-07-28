#!/usr/bin/env -S pwsh -nop
# Get psenv file from gist

$gisturl = 'https://gist.githubusercontent.com/awsomesawce/f37c910c245ed409fa6da84edf716dd9/raw/4b2184e2057535e50bf3e39f76bcc117060809c8/psenv.ps1'

[System.Net.ServicePointManager]::SecurityProtocol = 'Tls12'
$newfile = Invoke-RestMethod -Method Get -Uri $gisturl # Can use (Invoke-WebRequest $gisturl).Content instead
$newfile = (Invoke-WebRequest -Method "Get" -Uri "$gisturl").Content
$newfile >> .psenv.ps1

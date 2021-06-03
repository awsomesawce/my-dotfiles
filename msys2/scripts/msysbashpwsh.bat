@ECHO off
setlocal EnableDelayedExpansion
:: Begin Script
:: NameOfScript: .\msysbashpwsh.bat
:: OriginalLocation: %USERPROFILE%\bin\msysbashpwsh.bat
:: Description: This is a script that is a cmd script but calls pwsh to
::+open msysbash instead.
set PAGER=less
set EDITOR=vim
set MSYSENVDir=%USERPROFILE%\gitstuff\my-dotfiles\msys2
set msysbin=D:\MSYS2\usr\bin
set msysbashexe=%msysbin%\bash.exe

IF EXIST %~dp0msys-bash.ps1 (
    pwsh -nop -File %~dp0msys-bash.ps1 %*
) ELSE (
    ECHO the file is not there.
)
exit /B %ERRORLEVEL%
:: End Script

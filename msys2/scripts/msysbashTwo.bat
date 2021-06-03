@ECHO off
SETLOCAL EnableDelayedExpansion
:: Testing starting msys bash from cmd again
:: Options taken from the msys2_shell.cmd file in MSYS2's dir.
:: It needs to accept args.

:: Set env vars
set PAGER=less
set EDITOR=vim
set MSYSENVDir=%USERPROFILE%\gitstuff\my-dotfiles\msys2
set msysbash=D:\MSYS2\usr\bin\bash.exe
:: To export full current PATH from env into MSYS2, uncomment next line:
::set MSYS2_PATH_TYPE=inherit
:: To activate windows native symlinks uncomment next line
:: set MSYS=winsymlinks:nativestrict

:checkparams
:: Help option
if "x%~1" == "x-help" (
  call :printhelp "%~nx0"
  exit /b %ERRORLEVEL%
)
if "x%~1" == "x--help" (
  call :printhelp "%~nx0"
  exit /b %ERRORLEVEL%
)
IF EXIST %msysbash% (
    ECHO msys bash is there
) ELSE (
    ECHO msys bash is not there
)
exit /B %ERRORLEVEL%
:: END SCRIPT

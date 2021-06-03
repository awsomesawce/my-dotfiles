@ECHO off
SETLOCAL EnableDelayedExpansion
:: This is a test
:: The time is 2021-06-01 12:44
if "x%~1" == "x-h" (
    call :printhelp "%~nx0"
    exit /b %ERRORLEVEL%
)
if "x%~1" == "x--help" (
  call :printhelp "%~nx0"
  exit /b %ERRORLEVEL%
)

:printhelp
echo This script starts wsl
exit /B %ERRORLEVEL%

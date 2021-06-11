@ECHO off
:: This will start msys's bash, load env, then start zsh.

D:\MSYS2\usr\bin\bash.exe -l -i -c zsh
EXIT /B %ERRORLEVEL%

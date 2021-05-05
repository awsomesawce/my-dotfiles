@ECHO off
@rem This is a better start-msys-bash script
set PAGER=less
set EDITOR=vim
set MSYSENVDir=%USERPROFILE%\gitstuff\my-dotfiles\msys2
set msysbin=D:\MSYS2\usr\bin
%msysbin%\bash.exe -l -i
exit /B %ERRORLEVEL%
@rem And that is it!

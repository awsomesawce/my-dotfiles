# MSYS2 Windows Terminal Setup

MSYS2's environment is only usually accesssible thru it's own builtin terminal program called `mintty`.
If you want to use MSYS2's bash with **Windows Terminal**, you have to do something different.

In the MSYS2 installation's root directory, there exists a file called `msys2_shell.cmd`.  This is a small `cmd` script that 
sets a few environment variables and allows you to pick which `$MSYSTEM` to use (`MSYS`, `MINGW64`, or `MINGW32`).

Sadly, this script doesn't work with Windows Terminal.

## Explanation

Create a new profile in **Windows Terminal** (or open `settings.json`), put the `msysbash.bat` file 
into `~/bin` aka `%USERPROFILE%\bin` if you're using `cmd.exe`, or `$env:USERPROFILE\bin` if you're 
using `powershell.exe`, and add this line to the _Command Line_ field:

```cmd
cmd.exe /c %USERPROFILE%\bin\msysbash.bat
```

This starts a `bash` shell with the minimal PATH, so even if you have **Cygwin** installed on your system, you won't run
into any errors when trying to use certain commands.  
You can then add any additional entries to PATH by writing `export PATH="$PATH:/path/to/dir1:/path/to/dir2` into your `~/.bashrc`.
Just `grep PATH ./.msysenv` and see what I put in my PATH.

Once you're in `bash`, you can use **MSYS2's** `/usr/bin/shell` script to change your environment further.
	You can `source shell mingw64` to change your PATH to use MINGW64 programs.

## Zsh cannot source /usr/bin/shell

In order to get to MINGW64 mode in `zsh`, you have to use `bash` as a login shell and _then_ go into `zsh`.
> By the way, **MSYS2** has the _amazing_ **grml-zsh-config** package available in `pacman`.  
> Just use `pacman -Ss grml` to find it!

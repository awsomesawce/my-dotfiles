# Cygwin dotfiles

**Important**: This directory is symlinked to `/home/Carl/dotfiles`.

## TODO

- [ ] Create cp script to load into dotfiles directory.

This is a collection of dotfiles that are meant to be used with **Cygwin**.

These files are tailored to work in a combined **Windows** and **Unix** environment.

The `vimrc.cygwin` file is the one that works.  Using a windows CRLF style vimrc file will cause errors.

> **UPDATE**: I recklessly copied ~/.vimrc.cygwin to ~/_vimrc because `fff` wouldn't open vim correctly because
> I was correcting the problem by using an alias in `zsh` to open `alias vim='/usr/bin/vim -u ~/.vimrc.cygwin'`
> So now both `~/.vimrc.cygwin` and `~/_vimrc` are the same.
> Why does `/usr/bin/vim` read the vimrc from my windows home?  I have no idea, but I have a feeling
> that **POWERSHELL** caused the env variable `$HOME` to be `C:\Users\USERNAME`, which is not what
> I wanted when installing Cygwin.
> If I knew **POWERSHELL** did that, I would have changed the env variable before I installed Cygwin.
> Windows' traditional home directory environment variable is `%USERPROFILE%` in cmd.exe.
> But I guess **POWERSHELL** got the idea to use the name $HOME as the windows home, which messes up your 
> **Cygwin** installation if you don't catch that before you install Cygwin.
> **Cygwin** expects the $HOME variable to not be used.

## IMPORTANT FILES

- `.cyginit`: until I fix the init scripts when starting Cygwin, this file will be _the_ file to source when starting a Cygwin shell.  
  Use `source ./.cyginit` or `. ./.cyginit` to load all proper rc scripts.

- `omz.zshrc`: this zshrc file is the current one my Cygwin **Zsh** is sourcing at startup.  I also have a separate one that is non-omz.
> OMZ = [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh)

## IMPORTANT VARIABLES

My main shell is `zsh`, and I've adjusted my environment to be completely available from invoking `zsh` alone.
I don't even need to use `bash`.
All my env variables are strategically set to adapt to the `$HOME` problem.
Variables like `$CYGWIN_HOME` and `$WINDOWS_HOME` are set to their respective values `"/home/Carl"` and `"/cygdrive/c/Users/Carl"`.

For future installs of **Cygwin**, I will be more careful about what my `$HOME` parameter value is, because
at this moment I have files in both my Cygwin home ("`/home/Carl`") and my Windows home ("`/cygdrive/c/Users/Carl`") and both directories include different config and cache files that adhere to the **Cygwin** installation.

This made it so that my **Windows** home hsa a _mix_ of _unix_ style files and _windows_ style config files.

This makes it _so confusing_ to manage my dev env.

Luckily using `wsl` doesn't include these problems.
**WSL**'s environment is completely independent of the native **Windows** environment.
But this is not without it's faults.
I can't access `wsl` binaries as easily as I can `cygwin` binaries.
**Ubuntu**'s `wsl` env is _slow_ compared to native Linux.  
Most of the _slowness_ comes from installing packages.
When reading the package database, it literally takes minutes to install a 5Kb file.  This is unacceptable.

## NEWS

`fff` is installed in **Cygwin's** `/usr/bin`.  I used `make install`.
Check out `fff` on github [here](https://github.com/dylanaraps/fff).  It's great.

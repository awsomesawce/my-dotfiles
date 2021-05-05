# MSYS2 Config directory

This is my **MSYS2** config directory.

It is very much touch and go right now and at an _alpha_ stage so to speak.  Working out all the kinks.

## MSYS Specific Stuff

Currently, when starting the shell, it goes into minimal PATH mode.  I use my own script for starting the shell because I like using MSYS2's shell from **Windows Terminal**.

## Naming scheme
Naming scheme has changed from naming them `something.bashrc` to just how they're named in
their respective directories (`.bashrc`).

## Original Locations
The _original location_ of the each file as it is read by the shell should be included
in the beginning comment of the file.
In the future I plan on just symlinking each file to where it is read from (usually `$HOME`).

## Files

- `.zshrc.local`: The grml-zsh-config file that still needs some work
> Still migrating over from oh-my-zsh to grml config
- `.zshenv`: Sets environment.  Usually PATH and other important variables go here.
- `msysfuncs.sh`: MSYS2 specific functions _in progress_
- `.msysEntry`: This file sits in the `$HOME` directory and is sourced by `~/.bashrc` and `~/.zshrc.local` and from there it sources the ./.msysenv file in the git repo, which sets all the necessary parameters like `PATH` and such.
- `./.msysenv`: The actual msysenv file that sets the env variables.
> Note that there are variables exported to the env that point toimportant files and dirs pertaining to the shell env.
- `./.vimrc`, `~/.vimrc`: **MSYS2**'s vimrc file.  This can be put in a few places, but usually I will 
  just keep it in `~/` and copy it to this repo dir when done editing.
- `./.profile`, `./.inputrc`: Backup files copied from the `$HOME` directory.

## Directories

- `/old`: old files
- `/etc`: files originally copied from **MSYS2's** `/etc` dir.

## IMPORTANT ENV VARS

- `$msysfuncs`: Points to the `./msysfuncs.sh` file
- `$MSYSENVDir`: Points to this directory `./my-dotfiles/msys2`
- `$MSYSENVFILE`: Points to the `./.msysenv` file.
> I wanted to create an environment that both `bash` and `zsh` can share, while separating incompatible constructs like zsh's global aliases for instance.

## What Changed

Tue, May  4, 2021  2:05:32 AM\

### TLDR

__TLDR__: Did `rm -rf ~/.oh-my-zsh`, moved ~/.zshrc to ~/.zshrc.local.

### Actual info

Today I uninstalled (rm -rf) the `~/.oh-my-zsh` directory.  I had been running into problems with `msys2`'s zsh not 
updating oh-my-zsh correctly so I got rid of it.  I plan on reinstalling it.

I also moved `~/.zshrc` to `~/.zshrc.local` because that's what it says in the `grml-zsh-config` manpage.

**GRML**'s zsh config is all-in-all a good thing, it just doesn't seem to cooperate with oh-my-zsh.

It wasn't showing the correct prompt theme as it was always showing grml's prompt.
Also I believe the plugins weren't working like they should be.
I like oh-my-zsh but I might try a different plugin manager in the future, like `zgen` or `zplug`.
There are a _ton_ of zsh plugins and frameworks out there and `oh-my-zsh` is just the most popular one.


## TODOS

Fri, Apr 30, 2021 12:09:44 PM

- [ ] .bashrc and .profile need to be refactored because they were copied over from the _SYSTEM_ config.
  - [ ] Copy over /etc/skel/{.bashrc,.profile,.inputrc} and add your own config from the current ones.
> Best way to do this is to rename all the rc files with a .bak extension.

Wed, May  5, 2021 12:32:10 PM

- [ ] Rebuild ~/.zshrc for when running **Cygwin**'s `zsh`.

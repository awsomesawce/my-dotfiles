# MSYS2 Config directory

This is my **MSYS2** config directory.
Naming scheme has changed from naming them `something.bashrc` to just how they're named in
their respective directories (`.bashrc`).

The _original location_ of the each file as it is read by the shell should be included
in the beginning comment of the file.
In the future I plan on just symlinking each file to where it is read from (usually `$HOME`).

## What Changed

Tue, May  4, 2021  2:05:32 AM\
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

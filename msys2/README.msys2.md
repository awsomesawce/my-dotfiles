# MSYS2 Config directory

This is my **MSYS2** config directory.
Naming scheme has changed from naming them `something.bashrc` to just how they're named in
their respective directories (`.bashrc`).

The _original location_ of the each file as it is read by the shell should be included
in the beginning comment of the file.
In the future I plan on just symlinking each file to where it is read from (usually `$HOME`).


## TODOS

Fri, Apr 30, 2021 12:09:44 PM

- [ ] .bashrc and .profile need to be refactored because they were copied over from the _SYSTEM_ config.
  - [ ] Copy over /etc/skel/{.bashrc,.profile,.inputrc} and add your own config from the current ones.
> Best way to do this is to rename all the rc files with a .bak extension.

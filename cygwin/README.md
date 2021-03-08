# Cygwin dotfiles

**Important**: This directory is symlinked to `/home/Carl/dotfiles`.

## TODO

- [ ] Create cp script to load into dotfiles directory.

This is a collection of dotfiles that are meant to be used with **Cygwin**.

These files are tailored to work in a combined **Windows** and **Unix** environment.

The `cygwin.vimrc` file is the one that works.  Using a windows CRLF style vimrc file will cause errors.

## IMPORTANT FILES

- `.cyginit`: until I fix the init scripts when starting Cygwin, this file will be _the_ file to source when starting a Cygwin shell.  
  Use `source ./.cyginit` or `. ./.cyginit` to load all proper rc scripts.

- `omz.zshrc`: this zshrc file is the current one my Cygwin **Zsh** is sourcing at startup.  I also have a separate one that is non-omz.
> OMZ = [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh)

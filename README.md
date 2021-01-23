# My Dotfiles from WSL/Ubuntu


This is a repository created to keep track of the changes I make to my rc config files.

## Why keep dotfiles here

I had been using *OneDrive* to back up my dotfiles, but `git` will allow me to track changes much more easily.
Also this repo will contain various example rc files found in docs.

## Naming files
Currently, rc files from ubuntu are named `ubuntu.*`.  I'm debating whether to create a dotfiles git repo for each linux distro separately or to just pile them in one repo.  If I go with the latter, each distro might be better off to have it's own directory.  That way I won't have to append each file with `{name_of_distro}.*`.

## Example dotfiles from docs

Example dotfiles from various `docs` folders shall be located in `./docs/` folder.

## Dirs

- `/bin`: Homemade shell scripts.
- `/Arch`: contains all of Arch Linux's dotfiles.
- `/templates`: general dotfile templates.
- `/completion`: completion scripts.
- `/zsh\_custom`: oh-my-zsh framework custom scripts and aliases.
- `/windows`: windows config files for Powershell and/or unix-style tools.
- `/debian`: debian config files.
- `/ubuntu`: ubuntu config files.
- `/cygwin`: cygwin config files taken from `/etc/skel`, `/home/Carl`, and `/etc` inside **Cygwin.bat**'s shell.
- `/etc`: rc files copied from various `/etc` directories.

> Got error when pushing
> `setsockopt IPV6_TCLASS 8: Operation not permitted:`

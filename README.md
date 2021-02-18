# All My Dotfiles

This is my central repository for all the dotfiles I have in my machine.  
It contains most, if not _all_, my text-based configuration files for various WSL distros, editors, shells.

TODO: See below.

## UPDATE

**ArchWSL**'s newest update has rendered ArchWSL inoperable with a FATAL error.
`FATAL: kernel too old`.  
The problem seems to be that `glibc` has some interoperability issues with WSL's kernel.

I will be looking into this.  
TODO:  
- [ ] Will test if a full reinstall will correct the error.

## Git vs Cloud Backup

I had been using *OneDrive* to back up my dotfiles, but `git` will allow me to track changes much more easily.
Also this repo will contain various example rc files found in docs.

## Naming files

Currently, rc files from ubuntu are named `ubuntu.*`.  I'm debating whether to create a dotfiles git repo for each linux distro separately or to just pile them in one repo.  If I go with the latter, each distro might be better off to have it's own directory.  That way I won't have to append each file with `{name_of_distro}.*`.

## Example dotfiles from docs

Example dotfiles from various `docs` folders shall be located in `./docs/` folder.

## Dirs

- `bin/`: Homemade shell scripts for learning and/or system administration.
- `Arch/`: contains all of Arch Linux's dotfiles. (main WSL distro at the moment.)
- `templates/`: general dotfile templates, including `.editorconfig` and similar.
- `completion/`: random completion scripts.
- `zsh\_custom/`: oh-my-zsh framework custom scripts and aliases.
- `windows/`: windows config files for Powershell and/or unix-style tools.
- `debian/`: debian config files.
- `ubuntu/`: ubuntu config files.
- `cygwin/`: cygwin config files taken from `/etc/skel`, `/home/Carl`, and `/etc` inside **Cygwin.bat**'s shell.
- `etc/`: rc files copied from various `/etc` directories.  These include system-wide config files and/or default config for the system.

## TODO

- [ ] Separate dotfiles for each WSL distro into separate Git repos.
- [ ] Separate config for _Emacs_ and _Neovim_ into separate Git repos.
- [ ] Separate zsh and bash config into separate repos

**Windows**: Most of my current config for **Powershell** will be located [here](https://github.com/awsomesawce/scripts-pwsh) instead.

## Install on your machine

Use `git clone https://github.com/awsomesawce/my-dotfiles ~/.dotfiles`.  
Keep what you want or just download each file separately.

## INFO

Currently using [Arch Linux WSL](https://github.com/yuk7/ArchWSL) as my main distro.  
Be aware that **Arch Linux** isn't officially supported by Microsoft.

## Main shells and rcfiles

These are the main config files I'm using and updating daily.
A lot of the configuration is personally set up for my machine, so copy what you need and throw out the rest.
I use `zsh` as my main shell, and `bash` when I prefer to use more `bash`-compatible syntax.

### Zshell on Arch

**Files**: `Arch/.zshrc`, `Arch/.zshenv`, etc...

This is my main shell at the moment.  I do not use the [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) framework on ArchWSL right now, mainly because I'm learning about the internals of `zsh`.

`zsh` is an incredibly powerful shell, yet it's complicated at times.  
I suggest to anyone interested in using `zsh` to go ahead and read the [zsh-guide](http://zsh.sourceforge.net/Guide/) for a starting point, as the main documentation is _huge_ and cumbersome for newbies.

**Oh-My-Zsh** sets some defaults that I wasn't fully aware of, so I'm just doing a homemade setup.

I suggest to anyone interested in using `zsh` to go ahead and read the [zsh-guide](http://zsh.sourceforge.net/Guide/) for a starting point, as the main documentation is _huge_ and cumbersome for newbies.

I use [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting), [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions), [zsh-completions](https://github.com/zsh-users/zsh-completions) and [z](https://github.com/rupa/z).  You can find these utilities and scripts from Arch's 
`pacman` package manager by just doing `pacman -Ss zsh`.  
I plan on transitioning to [Zsh-z](https://github.com/agkozak/zsh-z), a native port of `z` to pure zsh.

### Bash on Arch

**Files**: `Arch/.bashrc`, `Arch/.bash_aliases`, `Arch/.bash_profile`, `Arch/.bash_extra_variables`, etc...

This is my second most-used shell.  I prefer using this shell when `zsh` isn't fast enough or is giving me problems.

## Other important files

- `Arch/qt_core_fix.sh`: this is a fix for ArchWSL that allows me to use Qt-based GUI applications from my WSL shell.
  What it does is strip the extra symbols from the QtCore5 library binary.  
  Currently I have Linux shells like KDE's **Konsole** working with my X11 setup.  It's a little slow, but it works.

## Disclaimer

I am _not_ an expert on Linux or Windows system admin.  I am merely a student of the technologies at hand.  
I am not responsible for your computer blowing up if you choose to delve into the unknown.

This config is constantly being updated.

See `./LICENSE` for license information

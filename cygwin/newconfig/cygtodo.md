# Cygwin todo

Author: Carl C. (awsomesawce at outlook dot com)

12/2/2020
## Most cygwin exes can be used from powershell
It might be easier to explore what's available in Cygwin's bin.  The exes there can be executed from powershell, including lots of apps normally available from *Scoop*.

11/24/2020
- Installed Extraterm terminal - similar to Fluent Terminal

Cygwin's bash shell automatically gets all windows variables, shims, and applys to it's own env.
This can cause some issues especially if you want different configurations on both Windows and Cygwin.  So in effect Cygwin doesn't act like the traditional linux-in-windows environment.

The plus side is that you can invoke Windows commands and apps inside Cygwin (eg. FVim).
Another plus is you can start most Cygwin `.exe`s from Powershell provided you have set the corresponding aliases.

## TODOS

- [ ] Find out why Cygwin isn't recognizing the CAPSLOCK key.
	When CAPS is on, Cygwin still prints out lower-case
- [ ] Adjust all Cygwin apps to point to Cygwin's `/home/carl` HOME directory instead of `/cygdrive/c/Users/Carl`.
- [x] Set $HOME in Cygwin to be `/home/Carl`
  - [ ] UPDATE: do not set $HOME.  It is set by **Powershell** before Cygwin's shell even starts.
        instead...
  - [x] Set $CYGHOME as cyghome

- [x] :in_progress: document the differences in default configuration of Cygwin, wsl/ubuntu, and MSYS2.  Also scoop-installed unix programs have their own default configurations
	Cygwin and Git-Bash both have their own example.vimrc files that are customized to their environment.  Document as much as you can.  
	For example, Cygwin's `~/.bashrc` has a cool function that you can uncomment and it keeps track of the directories you've been in without having to install an addon.

- [ ]Install and Set up `~/.bash_it`

Fri Jan  1 23:12:36 PST 2021

- [x] Setup Cygwin shell so that it has no errors on startup of it or Cygwin's version of **Vim**.
- [ ] Setup Cygwin so that it refers to `/home/Carl` as it's $HOME directory.
  - This might be possible by doing `export HOME=/home/Carl` in either `/etc/profile` or `~/.profile` or 
  `~/.bash_profile`.  Or even `~/.zprofile` or `~/.zshenv`.

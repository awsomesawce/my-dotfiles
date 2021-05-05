# Arch config directory

From now on, all subsequent dotfiles will _not_ have "arch" appended to them (like `arch.bashrc`).
Just use `.bashrc` and set fileviewers to show hidden files.

Make sure to use `command ls -a` to see _all_ files.

## qt5core fix

Script `qt_core_fix.sh` is a fix specific to Arch Linux that strips the binary library for qt5core so that
it can be read by the programs that use it.

> Now Konsole and Qterminal work!

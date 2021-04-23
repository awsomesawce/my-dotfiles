# MSYS2's zshenv file
# Author: Carl C
# Original Location: /c/Users/Carl/.zshenv
#
# This file is the first file a zsh shell reads.
# Here is where the most important and basic config shall go.

# Unset Rubygem variables that point to the Windows Rubygem installation.
unset GEM_HOME
unset GEM_PATH
# If you come from bash you might have to change your $PATH.
export EXECIGNORE="*.dll"
export PATH="$PATH:/usr/local/bin:/c/Users/Carl/scoop/shims:$HOME/bin:/home/Carl"

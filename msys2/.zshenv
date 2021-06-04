# MSYS2's zshenv file
# Author: Carl C
# Original Location: /c/Users/Carl/.zshenv
#
# This file is the first file a zsh shell reads.
# Here is where the most important and basic config shall go.

# Unset Rubygem variables that point to the Windows Rubygem installation.
unset GEM_HOME
unset GEM_PATH
export ZSHENV_SOURCED=1 # This allows us to source this file from ~/.zshrc but only if it has not been already sourced!
# If you come from bash you might have to change your $PATH.
export EXECIGNORE="*.dll"
export PATH="$PATH:/usr/local/bin:$HOME/scoop/shims:$HOME/bin:/home/Carl/bin:$HOME/.deno/bin"
FIGNORE="*.dll"

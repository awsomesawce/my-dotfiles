# Carl's msys2 bashrc

# ~/.bashrc: executed by bash(1) for interactive shells.


# Copied over from /etc/skel
# This is a redo from the original $HOME/.bashrc because it was copied from the wrong file.

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Common exports

export SHELL=bash
export PAGER=less
export EDITOR=vim
export FFF_FAV1=~/gitstuff/my-dotfiles/msys2
export INPUTRC=~/gitstuff/my-dotfiles/msys2/.inputrc

# Source the .msysEntry file
# TODO: change this so that ~/.bashrc does all the work ~/.msysEntry does.
sourcemsysenv() {
if [[ -r ~/.msysEntry ]]; then
    source ~/.msysEntry
    echo "~/.msysEntry sourced"
else
    echo "~/.msysEntry not readable"
fi
}
sourcemsysenv

# Function for copying this file to dotfiles git repo

function copy-bashrc-to-dotfiles {
    mydotfilesmsys=~/gitstuff/my-dotfiles/msys2
    if [ -d "$mydotfilesmsys" ] && [ -r ~/.bashrc  ]; then
	cp -i ~/.bashrc "$mydotfilesmsys"
    else
	echo "Something is wrong.  Check and make sure the ~/.bashrc and $mydotfilesmsys exist and are readable"
    fi
}

# Shell Options
#
# See man bash for more options...
#
# Don't wait for job termination notification
 set -o notify
#
# Don't use ^D to exit
 set -o ignoreeof
#
# Use case-insensitive filename globbing
 shopt -s nocaseglob
#
# Make bash append rather than overwrite the history on disk
 shopt -s histappend
#
# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
 shopt -s cdspell

# Completion options
#
# These completion tuning parameters change the default behavior of bash_completion:
#
# Define to access remotely checked-out files over passwordless ssh for CVS
# COMP_CVS_REMOTE=1
#
# Define to avoid stripping description in --option=description of './configure --help'
 COMP_CONFIGURE_HINTS=1
#
# Define to avoid flattening internal contents of tar files
# COMP_TAR_INTERNAL_PATHS=1
#
# Uncomment to turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
 [[ -f /etc/bash_completion ]] && . /etc/bash_completion

# History Options
#
# Don't put duplicate lines in the history.
 export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
#
# Ignore some controlling instructions
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit'
 export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls' # Ignore the ls command as well
#
# Whenever displaying the prompt, write the previous line to disk
# export PROMPT_COMMAND="history -a"

# Aliases
#
# Some people use a different file for aliases
 if [ -f "${HOME}/.bash_aliases" ]; then
   source "${HOME}/.bash_aliases"
 fi
#
# Some example alias instructions
# If these are enabled they will be used instead of any instructions
# they may mask.  For example, alias rm='rm -i' will mask the rm
# application.  To override the alias instruction use a \ before, ie
# \rm will call the real rm not the alias.
#
# Interactive operation...
 alias rm='rm -i'
 alias cp='cp -i'
 alias mv='mv -i'
#
# Default to human readable figures
 alias df='df -h'
 alias du='du -h'
#
# Misc :)
 alias less='less -r'                          # raw control characters
 alias whence='type -a'                        # where, of a sort
 alias grep='grep --color'                     # show differences in colour
 alias egrep='egrep --color=auto'              # show differences in colour
 alias fgrep='fgrep --color=auto'              # show differences in colour
#
# Some shortcuts for different directory listings
 alias ls='ls -hF --color=tty'                 # classify files in colour
 alias dir='ls --color=auto --format=vertical'
 alias vdir='ls --color=auto --format=long'
 alias ll='ls -alhF'                              # long list
 alias la='ls -A'                              # all but . and ..
 alias l='ls -CF'                              #

# npm completion source
if [[ -d ~/.bash_completion.d/ ]]; then
source ~/.bash_completion.d/_npm
else
echo "npm completion failed"
fi

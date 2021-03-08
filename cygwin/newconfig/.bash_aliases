#!/usr/bin/env bash
# Bash aliases file for cygwin
# Remember to update git repo for any big changes.
# Exported variables are contained in /home/Carl/.bashrc

oneDrive=/cygdrive/d/Carl/OneDrive
dotfiles_backup="$oneDrive/dotfiles_backup"
cygdotbackup="$dotfiles_backup/cygwin/newconfig"
cyghome="/home/Carl"

alias l='ls -lhF'
alias df='df -h'
alias du='du -h'
# Interactive operation...
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Misc :)
alias less='less -r'                          # raw control characters
alias whence='type -a'                        # where, of a sort
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour
#
# Some shortcuts for different directory listings
alias ls='ls -hF --color=auto'                 # classify files in colour
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias ll='ls -lhF'                              # long list
alias la='ls -A'                              # all but . and ..
alias l='ls -CF'                              #


alias g='git'
alias dotfilesgit='cd /cygdrive/c/Users/Carl/gitstuff/my-dotfiles/cygwin'
alias nvbrc='nvim /home/Carl/.bashrc'
alias vbrc='vim /home/Carl/.bashrc'
alias nvbsha='nvim /home/Carl/.bash_aliases'
alias sourcethatshit='source /home/Carl/.bashrc'
alias winhome='cd /cygdrive/c/Users/Carl'
alias ducks='cygstart https://duckduckgo.com'
alias openbrowser='cygstart https://duckduckgo.com'
do_some_stuff() {
cygstart https://github.com
cygstart https://nodejs.org
}

cp_shell_config() {
local cyghome='/home/Carl'
local bashrc="$cyghome/.bashrc"
local bashaliases="$cyghome/.bash_aliases"
[[ -r "$bashrc" ]] && \
cp "$bashrc" "$cygdotback" || echo "bashrc not found"; exit 1 
[[ -r "$cyghome/.bash_aliases" ]] && echo "bash_aliases exists and is readable" || echo "bash_aliases isn't readable"; exit 1
return 0
}

export cygarchives='/home/Carl/archives'
alias ccat='ccat.exe'
alias nv='nvim'
alias vim='vim -u ~/.vimrc.cygwin'

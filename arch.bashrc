#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh # source z shell script

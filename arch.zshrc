# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/carlc/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
# Here is my personal configuration for Arch

autoload -Uz promptinit # init prompt engine
promptinit # init prompt engine
prompt bigfade # prompt theme
echo "Welcome to zsh!"
export EDITOR=vim
export PAGER=less

# Some aliases to start with
alias l='ls -hAF'
alias cp='cp -i'
alias ls='ls --color=auto --group-directories-first'
alias rm-'rm -i'
alias zhelp='cd /usr/share/zsh/'
# Suffix aliases
alias -s txt=vim
alias -s md=bat
alias -s zsh=vim
# Other aliases
alias vzrc='vim ~/.zshrc'
alias gitst='git status'
alias wsl-notes='cd ~/Documents/wsl-notes'
alias gitpp='git pull && git push'


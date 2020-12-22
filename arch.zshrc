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
#prompt bigfade # prompt theme
prompt fade blue
echo "Welcome to zsh!"
export EDITOR=vim
export PAGER=less
export PATH=$HOME/bin:/usr/local/bin:$PATH
export SHELL=zsh
# Todo file easiness
export TODOFILE=/home/carlc/Documents/wsl-notes/TODO/remember.md
alias vimtodo="vim $TODOFILE"
alias emacstodo="vim $TODOFILE"
alias showtodo="bat $TODOFILE"
# Some aliases to start with
alias lista='ls -dF .*' # list all dotfiles
alias cp='cp -i'
alias ls='ls --color=auto --group-directories-first'
alias rm='rm -i'
alias zhelp='cd /usr/share/zsh/5.8/help'
# Suffix aliases
alias -s txt=vim
alias -s md=bat
alias -s zsh=vim
alias -s html=w3m
# Other aliases
alias vzrc='vim ~/.zshrc' # quick edit to .zshrc.
alias ezrc='emacs ~/.zshrc' # edit with emacs instead.
alias gs='git status' # changed from gitst
alias gitst='git status' # added back for my sake
# Project aliases
alias gitstuff='cd ~/Documents/gitstuff'
alias node-school='cd ~/Documents/gitstuff/node-school'
alias wsl-notes='cd ~/Documents/wsl-notes'
# working with ~/.dotfiles
export DOTDIR=~/.dotfiles
export DOTBIN=~/.dotfiles/bin
alias cddb="cd $DOTBIN"
# Other nice aliases
alias gitpp='git pull && git push'
alias gp='git push'
alias help='run-help'
## Pacman aliases
alias pmii='pacman -Sii'
alias pms="pacman -Ss"
# cht.sh alias
# usage: type "chtsh {{something}}" and the word "something" will go where the 
# $1 is located.
alias chtsh="curl cht.sh/$1" # it works!!
# shortcut aliases for web pages
alias ducks='w3m www.duckduckgo.com'
alias ducksl='lynx www.duckduckgo.com'
alias ghsite="w3m www.github.com"
# source zsh-syntax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# if debian, source this one
#source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

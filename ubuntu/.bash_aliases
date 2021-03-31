# ~/.bash_aliases file for Wsl/ubuntu
# Add some variables that will make it easier to
# type in common locations.

export gitstuffdir=$HOME/Documents/gitstuff

alias ..='cd ..'
alias typea='type -a'
# check /usr/share/doc/bash-* for more examples, scripts, and completions

alias lzyg='lazygit'
alias gitjour='cd ~/documents/gitstuff/git-journal'
# list all files starting with a dot
alias lista='ls -dF .*'
# shorter git status
alias gitst='git status'

## Current projects
# node-school
alias node-school="cd \$gitstuffdir/node-school"
alias gitstuff="cd \$gitstuffdir"
alias dotfiles='cd ~/.dotfiles/'
ubudot=~/.dotfiles/ubuntu
alias ubudot="cd \$ubudot"
alias gaddc='~/bin/gaddc.sh'
# TODO: Adjust position of variables
export npmDir=/home/carlc/.nvm/versions/node/v14.15.1/lib/node_modules/npm
alias npm_loc="cd \"\$npmDir\""
alias abs-guide='cd /usr/share/doc/abs-guide/'
alias absguide='cd /usr/share/doc/abs-guide/'
#function cp_bashrc {cp ~/.bashrc ~/.dotfiles/ubuntu.bashrc}
#alias aptinst='sudo apt install'
alias aptinst='sudo aptitude install'
alias pip='pip3'
alias wslnotes="cd \$gitstuffdir/wsl-notes/ubuntu"
alias deno="\$HOME/.deno/bin/deno"
alias bat='bat.exe'
alias fd='fdfind'

## Config files
alias vzrc="vim \$HOME/.zshrc"
alias vbrc="vim \$HOME/.bashrc"
alias vbal="vim ~/.bash_aliases"
alias vzal="vim ~/.zsh_aliases"
alias gclist='git config --list'
alias exphere='explorer.exe .'
alias ashow='apt-cache show'
alias cp='command cp -i'

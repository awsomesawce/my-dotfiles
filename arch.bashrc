#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '
## End of base bashrc config

## export variables
LS_COLORS="$(vivid generate molokai)"
export LS_COLORS
export EDITOR=nvim
export VISUAL=nvim
export PAGER=less
export PATH=$HOME/.local/bin:$HOME/.gem/ruby/2.7.0/bin/:$HOME/bin:/usr/local/bin:$PATH
export SHELL=/bin/bash
export CDUMP=/mnt/c/Users/Carl/dump
export NPM_BIN=/home/carlc/.nvm/versions/node/v14.15.3/bin
alias npmbin="cd \$NPM_BIN"

## Todofile aliases
export TODOFILE=/home/carlc/Documents/wsl-notes/TODO/remember.md
alias vimtodo="vim \$TODOFILE"
alias emacstodo="emacs \$TODOFILE"
alias showtodo="bat \$TODOFILE"
alias nvimtodo="nvim \$TODOFILE"

## Config Aliases
alias emacsconfig='emacs ~/.emacs'
alias nvimconfig='nvim ~/.config/nvim/init.vim'
alias nvimshellconfig='nvim -O2 ~/.bashrc ~/.zshrc'
alias nvimbashconfig='nvim ~/.bashrc'
alias onedrive_dotfiles='cd /mnt/d/Carl/OneDrive/dotfiles_backup'

## Common Aliases
alias ls='ls --color=auto --group-directories-first'
alias dir='dir --color=auto'
alias lsa='ls -a'

alias rm='rm -i'
alias cp='cp -i'

#[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh # source z shell script
## Project aliases
alias labsnode="cd /home/carlc/Downloads/labs-node-school"
alias abs-guide='cd ~/Downloads/abs-guide/'
alias archives='cd ~/archives'

## NVM variables
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. /home/carlc/.bash.d/cht.sh


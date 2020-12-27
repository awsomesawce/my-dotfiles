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
prompt fade cyan
echo "Welcome to zsh!"
export EDITOR=nvim
export VISUAL=nvim
export PAGER=less
export PATH=/home/carlc/.gem/ruby/2.7.0/bin/:$HOME/bin:/usr/local/bin:$PATH
export SHELL=zsh
export CDUMP=/mnt/c/Users/Carl/dump
export NPM_BIN=/home/carlc/.nvm/versions/node/v14.15.3/bin
alias npmbin="cd $NPM_BIN"
# Todo file easiness
export TODOFILE=/home/carlc/Documents/wsl-notes/TODO/remember.md
alias vimtodo="vim $TODOFILE"
alias emacstodo="emacs $TODOFILE"
alias showtodo="bat $TODOFILE"
alias nvimtodo="nvim $TODOFILE"

# Some aliases to start with
alias lista='ls -dF .*' # list all dotfiles
alias cp='cp -i'
alias ls='ls --color=auto --group-directories-first'
alias vdir='vdir --color=auto'
alias rm='rm -i'
alias zhelp='cd /usr/share/zsh/5.8/help'
alias edit="nvim"
# Suffix aliases
alias -s txt=nvim
alias -s md=bat
alias -s adoc=bat
alias -s zsh=nvim
alias -s html=w3m
# Other aliases
alias vzrc='vim ~/.zshrc' # quick edit to .zshrc.
alias nvzrc='nvim ~/.zshrc' # edit with nvim
alias ezrc='emacs ~/.zshrc' # edit with emacs instead.
alias gs='git status' # changed from gitst
alias gc='git commit'
alias gitst='git status' # added back for my sake
# Project aliases
alias gitstuff='cd ~/Documents/gitstuff'
alias node-school='cd ~/Documents/gitstuff/node-school'
alias webpack-demo='cd ~/webpack-demo'
alias wsl-notes='cd ~/Documents/wsl-notes'
alias labsnode="cd /home/carlc/Downloads/labs-node-school/Labs-2020-10-06/"
alias cdownloads="cd /mnt/c/Users/Carl/Downloads"
alias abs-guide='cd ~/Downloads/abs-guide/'
# working with ~/.dotfiles
export DOTDIR=~/.dotfiles
alias dotfiles="cd $DOTDIR"
export DOTBIN=~/.dotfiles/bin
alias cddb="cd $DOTBIN"
alias update_dotfiles='cd ~/.dotfiles && git add . && git commit && git push' # This will update all changes in dotfiles dir.
# Other nice aliases
alias gdiffremote='git diff --color=auto origin/master'
alias gitpp='git pull && git push'
alias gp='git push'
alias convad='asciidoctor -b html5 -d book -D html/'
alias cp2c="cp $1 $CDUMP" # This doesn't work currently
alias help='run-help'
## Pacman aliases
alias pmii='pacman -Sii'
alias pms="pacman -Ss"
# cht.sh script installed in ~/bin
alias chtsh='cht.sh'
# shortcut aliases for web pages
alias ducks='w3m www.duckduckgo.com'
alias ducksl='lynx www.duckduckgo.com'
alias ghsite="w3m www.github.com"
# override when using windows path so sass defaults to linux sass
alias sass=/home/carlc/.nvm/versions/node/v14.15.3/bin/sass
## sourcing external scripts
#[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh # source the z shell script for tracking directories
# source zsh-syntax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# if debian, source this one
#source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# zsh-autocomplete
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# bash completion for chtsh
#. ~/.bash.d/cht.sh
# zsh completion for chtsh
. ~/.dotfiles/completion/chtsh_zsh_completion
# Node Version Manager stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# fasd init
eval "$(fasd --init auto)"

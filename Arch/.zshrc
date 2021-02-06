# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi
LESSOPEN="|lesspipe.sh %s"; export LESSOPEN
# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
fpath+=~/.zfunc
# The following lines were added by compinstall
zstyle :compinstall filename '/home/carlc/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
# Here is my personal configuration for Arch

#autoload -Uz promptinit # init prompt engine
#promptinit # init prompt engine
#prompt bigfade # prompt theme
#prompt fade cyan
#prompt grml # too slow for me
echo "Welcome to zsh!"
LS_COLORS="$(vivid generate molokai)"
export LS_COLORS
export ZSH_CONFIG=~/.zshrc
export NVIM_CONFIG=~/.config/nvim/init.vim # Sets variable for nvimconfig for ease of use
export ZSH_ALIASES_FILE="$HOME/.zsh_aliases" # Start using that file as zsh aliases file
export ARCHDOTFILES="$HOME/.dotfiles/Arch"
export BROWSER=w3m
export EDITOR=nano
export VISUAL=nvim
export PAGER=less
export PATH=$HOME/.local/bin:$HOME/.gem/ruby/2.7.0/bin/:$HOME/bin:/usr/local/bin:$PATH
export SHELL=zsh
# Extra variables
# TODO: 2/4/2021 Source extra variables from another file in the future
export CDUMP=/mnt/c/Users/Carl/dump
export TEMPLATES_DOTDIR=~/.dotfiles/templates
export WWW_HOME=https://duckduckgo.com
# 
export REMEMBER="$HOME/remember.md"
LOG_HOME_DIR='~/log/'
export LOG_HOME_DIR
export NPM_BIN=/home/carlc/.nvm/versions/node/v14.15.3/bin
# fff file manager favorites
export FFF_FAV1=~/Documents
export FFF_FAV2=~/.bashrc
export FFF_FAV3=~/Documents/wsl-notes
export FFF_FAV4=/usr/share
export FFF_FAV5=~/.dotfiles
export FFF_FAV6=~/.config
export FFF_FAV7=~/.config/nvim
export FFF_FAV8=
export FFF_FAV9=
alias ls="lsd" # makes lsd the default ls of the system
alias npmbin="cd $NPM_BIN"
# Todo file easiness
export TODOFILE=/home/carlc/Documents/wsl-notes/TODO/remember.md
alias vimtodo="vim $TODOFILE"
alias emacstodo="emacs $TODOFILE"
alias showtodo="bat $TODOFILE"
alias nvimtodo="nvim $TODOFILE"
## Config Aliases
alias vzrc='vim ~/.zshrc' # quick edit to .zshrc.
alias nvzrc='nvim ~/.zshrc' # edit with nvim
alias ezrc='emacs ~/.zshrc' # edit with emacs instead.
alias nvimshellconfig='nvim -O2 ~/.bashrc ~/.zshrc'
alias nvbrc='nvim ~/.bashrc'
alias nzrc='nano ~/.zshrc'
alias vbrc='vim ~/.bashrc'
alias emacsconfig='emacs ~/.emacs'
alias nvimconfig='nvim ~/.config/nvim/init.vim'
alias vimconfig='vim ~/.vimrc'
alias emacsconfig='emacs ~/.emacs'
alias onedrive_dotfiles='cd /mnt/d/Carl/OneDrive/dotfiles_backup'
# Some aliases to start with
alias lista='command ls -dF .*' # list all dotfiles
alias rm='command rm -i'
alias cp='command cp -i'
alias lsdir='ls --color=auto --group-directories-first'
alias vdir='vdir --color=auto'
alias zhelp='cd /usr/share/zsh/5.8/help'
alias edit="nvim"
alias nvimdiff="nvim -d"
alias nvim2="nvim -O2"
alias vim2="vim -O2"
alias nvim22='nvim -O2 -p2'
alias ....='cd ../../..'
# Set basic readme viewer for bat
alias brm='bat README.md'

## Aliases copied from oh-my-zsh plugins
# Common Aliases plugin ~/.oh-my-zsh/plugins/common-aliases

# Advanced Aliases.
# Use with caution
#

# ls, the common ones I use a lot shortened for rapid fire usage
alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable
alias ll='ls -l'      #long list
alias ldot='ls -ld .*'
alias lS='ls -1FSsh'
alias lart='ls -1Fcart'
alias lrt='ls -1Fcrt'

alias grep='grep --color'
alias sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS} '
alias ff='find . -type f -name'

alias h='history'
alias hgrep="fc -El 0 | grep"
alias p='ps -f'
alias sortnr='sort -n -r'
alias unexport='unset'

## End from oh-my-zsh

# Suffix aliases
alias -s txt=nvim
alias -s md=bat
alias -s adoc=bat
#alias -s zsh=nvim # turned off because it prevents scripts from running.
alias -s html=w3m
# Other aliases
alias g='git' # simply g for git
alias gs='git status' # changed from gitst
alias gc='git commit'
alias gitst='git status' # added back for my sake
# Project aliases
alias gitstuff='cd ~/Documents/gitstuff'
alias node-school='cd ~/Documents/gitstuff/node-school'
alias nodeschool=node-school
alias webpack-demo='cd ~/webpack-demo'
alias webpackdemo=webpack-demo
alias wsl-notes='cd ~/Documents/wsl-notes'
alias wslnotes=wsl-notes
alias labsnode="cd /home/carlc/Downloads/labs-node-school/Labs-2020-10-06/"
alias cdownloads="cd /mnt/c/Users/Carl/Downloads"
alias abs-guide='cd ~/Downloads/abs-guide/'
alias absguide=abs-guide
alias onedrive='cd /mnt/d/Carl/OneDrive'
# working with ~/.dotfiles
export DOTDIR=~/.dotfiles
alias dotfiles="cd $DOTDIR"
export DOTBIN=~/.dotfiles/bin
alias cddb="cd $DOTBIN"
#alias update_dotfiles='cd ~/.dotfiles && git add . && git commit && git push' # This will update all changes in dotfiles dir.
# Other nice aliases
alias gdiffremote='git diff --color=auto origin/master'
alias gitpp='git pull && git push'
alias gp='git push'
alias lshome='ls ~/'
alias lsd=/usr/bin/lsd
alias lpage='ls | less'
alias reload='source ~/.zshrc'
#alias convad='asciidoctor -b html5 -d book'
alias help='run-help'
## Pacman aliases
alias pmii='pacman -Sii'
alias pms="pacman -Ss"
alias pminstall='sudo pacman -S'
alias pmupdate='sudo pacman -Syu'
alias pm='pacman'
# cht.sh script installed in ~/bin
alias chtsh='cht.sh'
# shortcut aliases for web pages
alias open='xdg-open'
alias ducks='w3m www.duckduckgo.com'
alias ducksl='lynx www.duckduckgo.com'
alias ghsite="w3m www.github.com"
alias linksgh="links www.github.com/awsomesawce"
# overrides when using windows path 
alias sass=/home/carlc/.nvm/versions/node/v14.15.3/bin/sass
alias ack='/usr/bin/vendor_perl/ack'
## sourcing external scripts
#[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh # source the z shell script for tracking directories
# source zsh-syntax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# if debian, source this one
#source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# zsh-autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# bash completion for chtsh
#. ~/.bash.d/cht.sh
# zsh completion for chtsh
# . ~/.dotfiles/completion/chtsh_zsh_completion # Not working
# Node Version Manager stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# fasd init
#eval "$(fasd --init auto)"
## Experimental alias for simple zshrc diff script
#alias zshrcdiff='bash -e /home/carlc/.dotfiles/bin/zshrc_diff'
### Turned off zsh-theme-powerlevel10k for now because it's slow to start on wsl
#source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
alias winsnippets="cd ~/onedrive/snippets" # ~/onedrive is symlink to the windows location.
alias notable='cd /mnt/d/Carl/OneDrive/Notable'
alias pmfl='pacman -Fl'

# my attempt at a zsh_aliases test
if [[ -f "$ZSH_ALIASES_FILE" ]]; then
    . "$ZSH_ALIASES_FILE"
fi

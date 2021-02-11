#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return # Not defined in posix sh (won't work when bash is invoked as sh)
#PS1='[\u@\h \W]\$ '
## End of base bashrc config

## Additional code from Debian bashrc
shopt -s histappend
HISTCONTROL=ignoreboth
HISTSIZE=1500
HISTFILESIZE=2000
shopt -s checkwinsize
shopt -s globstar

## Begin From Debian
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac
## END from debian

## export variables
LS_COLORS="$(vivid generate molokai)"
export LS_COLORS
# set editor, visual, pager, shell
export EDITOR=nvim
export VISUAL=nvim
export PAGER=less
export WWW_HOME=https://duckduckgo.com
export PATH=$HOME/.local/bin:$HOME/.gem/ruby/2.7.0/bin/:$HOME/bin:/usr/local/bin:$PATH
export SHELL=/bin/bash
# set location variables
export CDUMP=/mnt/c/Users/Carl/dump
export REMEMBER="$HOME/remember.md"
export NPM_BIN=/home/carlc/.nvm/versions/node/v14.15.3/bin
alias npmbin="cd \$NPM_BIN"
export NVIMCONFIG=~/.config/nvim/init.vim # Added for ease of use
export TEMPLATES=~/.dotfiles/templates
export BASH_ALIASES_FILE=/home/carlc/.bash_aliases
# tilde isn't expanded when in single quotes!

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases # source bash aliases

# export FFF favorites, etc.
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
alias ls="lsd" # Use modern ls program
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

source "$HOME/.cargo/env"
alias l='ls -alhF'
alias wsl-notes='cd ~/Documents/wsl-notes'
alias gst='git status'
alias pmpackagelist='pacman -Qe'
[ -r /home/carlc/.byobu/prompt ] && . /home/carlc/.byobu/prompt   #byobu-prompt#

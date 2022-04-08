# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export EDITOR=vim
export SHELL=bash
export TERM=xterm-256color
export BROWSER=wslview
export DWWW_BROWSER=lynx
export PAGER=less
export DOTFILES=~/.dotfiles/ubuntu
export UBULIB="$DOTFILES/lib"
export ONEDRIVE="/mnt/c/Users/Carl/OneDrive"
export usrdocs=/usr/share/doc
export winhome=/mnt/c/Users/Carl # Shortcut to windows home
# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# Make glob patterns adhere to dotfiles too
shopt -s dotglob

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1500
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
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
force_color_prompt=yes

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

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lsd='ls -d'


# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
else
    echo ".bash_aliases file not found" >&2
fi

# Source ~/.shell_aliases file, which are compatible with both bash and zsh

if [[ -f ~/.shell_aliases ]] && [[ -r ~/.shell_aliases ]]; then
    echo "Sourcing ~/.shell_aliases"
    . ~/.shell_aliases
else
    echo "~/.shell_aliases file not found or unreadable"
fi

# Source ~/.shell_functions script
if [[ -f ~/.shell_functions ]] && [[ -r ~/.shell_functions ]]; then
    echo "loading ~/.shell_functions"
    . "$HOME/.shell_functions"
else
    echo "\"~/.shell_functions\" unreadable or not present."
fi

# Source ~/.projectVars
if [[ -f ~/.projectVars ]] && [[ -r ~/.projectVars ]]; then
    echo "Loaded ~/.projectVars"
    source "$HOME/.projectVars"
else
    echo "\"~/.projectVars\" script not found or is not readable"
fi

# Source common vars
if [ -r "$UBULIB/.env.common" ]; then
    echo "Sourcing \$UBULIB/.env.common"
    . "$UBULIB/.env.common"
else
    echo "\$UBULIB/.env.common not found" >&2
fi

# TODO: Create array filled with all sourced files

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
# Install Ruby Gems to ~/gems
# NOTE: This was only necessary when the GEM_HOME env var was set in windows.
export GEM_HOME="$HOME/gems"

# Adjust path so these are first in line.
# ~/.npm-packages is where global packages are installed.
export PATH="$HOME/gems/bin:$HOME/.npm-packages/bin:$PATH"
# NOTE: check ~/.profile for other PATH additions.
# Enable next line for x11 setup for x410.
[ -z "$DISPLAY" ] && export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0
# powerline script
# NOTE: TURNED OFF POWERLINE
#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#. /usr/share/powerline/bindings/bash/powerline.sh
# tmux bash completion script
[ -e ~/sh-files/tmux_bash_completion.sh ] && source /home/carlc/sh-files/tmux_bash_completion.sh 

# gh bash completion script
[ -f ~/sh-files/gh_completion.sh ] && source /home/carlc/sh-files/gh_completion.sh
#source /usr/share/doc/fzf/examples/completion.bash
#source /usr/share/doc/fzf/examples/key-bindings.bash
# nvm installed variables and scripts
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
### Deactivated this because it's already sourced from earlier
## Use bash-completion, if available - from bash-completion docs
#[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
#	    . /usr/share/bash-completion/bash_completion
[ -f ~/.dotfiles/completion/node.bash_completion ] && source ~/.dotfiles/completion/node.bash_completion
# This is the bottom of the file.  Thanks for reading!

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

bashdoc=/usr/share/doc/bash
PATH="/home/carlc/.local/bin:$PATH"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/carlc/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/carlc/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/carlc/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/carlc/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

echo "Setting conda env to sci"
conda activate sci

alias bat=bat.exe
alias tclsh=/usr/bin/tclsh
export DENO_INSTALL="/home/carlc/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

. "$HOME/.cargo/env"

# To install latest version of ruby
# TODO: Write script for installing latest rbenv with if statements!
export PATH=/home/carlc/.cargo/bin:"$PATH"

# BEGIN rbenv
export PATH="$HOME/.rbenv/bin:$PATH" # Added 4-2-2022
source ~/.rbenv/completions/rbenv.bash # Added 4-2-2022
eval "$(rbenv init - bash)"
# END rbenv

# BEGIN bash completion
for i in /home/carlc/.bash.d/*; do
    . "$i"
done
# END bash completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

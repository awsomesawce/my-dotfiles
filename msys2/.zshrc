# MSYS2's zshrc file
# Author: Carl C (awsomesawce@outlook.com)
# Date: 4/19/2021
# Original Location: /cygdrive/c/Users/Carl/
# Update: Changed around some variable names to make them less ambiguous.
# Update2: Apr 30, 2021 - Deleted redundant variables, commented out cygwin-based variables
#       of all zsh config files.
# TODO: Make msys2 version with msys2 paths (in progress)
# TODO: NOTE: label each rendition of env variables with either "CYGWIN" or "MSYS2" as name prefix

# turn off those nasty beeps
setopt nobeep

# Have glob statements find dotfiles too.
setopt dotglob

# PATH is set in .msysenv file
#PATH="$PATH:/c/Users/Carl/scoop/shims"

typeset -gx EDITOR=vim
typeset -gx SHELL=zsh

# Source msysenv file automatically from startup.  This is done lower in the file

#export WINDOWS_HOME="/cygdrive/c/Users/Carl"
export WINDOWS_HOME=/c/Users/Carl
#export cyghome=/home/Carl

# Path to your oh-my-zsh installation.
# TODO: change oh-my-zsh installation location to /home/Carl/.oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
# Path to your home directory in Cygwin/MSYS
export MSYS_HOME=/home/Carl
# main zshrc is in WINDOWS_HOME, other zsh files are located in $CYGWIN_HOME
# TODO: combine some of these variables into an array
#export CYGWIN_ZSHRC="$WINDOWS_HOME/.zshrc"
export MSYS_ZSHRC="$WINDOWS_HOME/.zshrc"
#export CYGWIN_ZSHALIASES="$CYGHOME/.zsh_aliases"
# source CYGWIN_ZSHALIASES at bottom
typeset -gx msys_dotfiles_backup="/d/Carl/OneDrive/dotfiles_backup/msys2"

# Arrays representing a list of important cygwin files/directories
# relating to zsh of course.
#typeset -agx CYGWIN_FILES=( "/home/Carl/.zshenv" "$CYGWIN_ZSHALIASES" "$CYGWIN_ZSHRC" )
#typeset -agx cygwin_dirs=( "$CYGWIN_HOME" "$cygwin_dotfiles_git" "$cygwin_dotfiles_backup" "/usr/share/zsh" )

# Set array that points to the msys2 config directories
typeset -agx msys_dirs=( "$msys_dotfiles_backup" "$HOME/gitstuff/my-dotfiles/msys2" )
# Source files from dotfiles git repo (TODO)
#if [[ -d "${msys_dirs[2]}" ]] && [[ -r "${msys_dirs[2]}/.zsh_aliases" ]]; then
#    echo "Loading ${msys_dirs[2]}/.zsh_aliases."
#    source "${msys_dirs[2]}/.zsh_aliases"
#else
#    echo ".zsh_aliases file not found.  Type \`vzrc' to edit the ~/.zshrc file"
#fi

if [[ -r ~/.msysEntry ]]; then
    echo "Sourcing msysEntry file"
    source ~/.msysEntry
else
    echo "Something is wrong: ~/.msysEntry file not found"
fi

# Editor and other settings

## User input
# This is the run-help fix.
# Allows the user to run-help for help with commands and builtins.
#unalias run-help
autoload -Uz run-help
alias help=run-help
## End user input
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME=random
#ZSH_THEME="fino-time"
#ZSH_THEME="amuse"
ZSH_THEME="half-life"
#ZSH_THEME="gnzh"
#ZSH_THEME="crunch"
#ZSH_THEME="risto"
#ZSH_THEME="muse"
#ZSH_THEME="gallifrey"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" "candy" "candy-kingdom" "bira" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(tig universalarchive gitignore catimg urltools jsontools fd mosh ssh-agent git npm wd colored-man-pages web-search)
# NOTE: Try these plugins: 
# singlechar: sets a few interesting _one-character_ aliases.
# sfffe: sets some nice aliases for front-end web development
# - [ ] scd: yet another chdir plugin like z.  Can also be used with other shells.
# - [ ] shell-proxy: Contains a few python scripts that integrate with the shell in some way.

source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
 export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# My aliases
#
# TODO: Move _all_ zsh aliases to their own file
#
#[[ -r "$CYGHOME/.zsh_aliases_cyg" ]] && . "$CYGHOME/.zsh_aliases_cyg" || echo ".zsh_aliases_cyg does not exist.  touch $CYGHOME/.zsh_aliases_cyg to get rid of this message."
#[[ -r "$CYGHOME/.zsh_exports" ]] && . "$CYGHOME/.zsh_exports" || echo ".zsh_exports does not exist. touch $CYGHOME/.zsh_exports to get rid of this message."

[[ -z $ZSHENV_SOURCED ]] && source ~/.zshenv \
 || print "~/.zshenv already sourced"

alias vzrc='vim ~/.zshrc'
alias editzshrc=vzrc
alias ohmyzsh="cd ~/.oh-my-zsh"
alias gitdir="cd /cygdrive/d/Carl/Documents/GitHub"
alias gitst='git status'
alias gst='git status'

# More aliases (from /usr/share/doc/zsh-5.8 in Cygwin)

alias mv='nocorrect command mv -i'       # no spelling correction on mv
alias cp='nocorrect command cp -i'       # no spelling correction on cp
alias mkdir='nocorrect command mkdir' # no spelling correction on mkdir
alias j=jobs
alias pu=pushd
alias po=popd
alias d='dirs -v'
alias h=history
alias grep=egrep
alias ll='ls -l'
alias la='ls -aF'
alias l='ls -lhF'

# List only directories and symbolic
# links that point to directories
alias lsd='ls -ld *(-/DN)'

# List only file beginning with "."
alias lsdot='ls -ld .*'

# source zsh_aliases file
# TODO: This will be sourced directly from the git repo just like Ubuntu's ~/.dotfiles

msysZshAliases=~/.zsh_aliases
zshAliasesHome=~/.zsh_aliases
if [[ -r ~/.zsh_aliases ]]; then
    echo "Sourcing ~/.zsh_aliases"
    . ~/.zsh_aliases
else
    echo "Did not find ~/.zsh_aliases"
fi

# This is the one that is based inside cygwin's home directory.
#[[ -r "$CYGWIN_ZSHALIASES" ]] && source "$CYGWIN_ZSHALIASES" || echo "\$CYGWIN_ZSHALIASES not found. touch \$cyghome/.zsh_aliases to get rid of this message."
fpath=(~/.zfunc $fpath)

autoload -U compinit # Trying this out to enable gh completion from startup
compinit

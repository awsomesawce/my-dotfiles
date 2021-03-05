# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
# Path to your home directory in Cygwin
export CYGHOME=/home/Carl
export CYGZSHRC="$CYGHOME/.zshrc"
export CYGZSHALIASES="$CYGHOME/.zsh_aliases"
# source CYGZSHALIASES at bottom

## User input
unalias run-help
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
plugins=(jsontools fd colorize git node npm colored-man-pages web-search)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
[[ -r "$CYGHOME/.zsh_aliases_cyg" ]] && . "$CYGHOME/.zsh_aliases_cyg" || echo ".zsh_aliases_cyg does not exist.  touch $CYGHOME/.zsh_aliases_cyg to get rid of this message."
[[ -r "$CYGHOME/.zsh_exports" ]] && . "$CYGHOME/.zsh_exports" || echo ".zsh_exports does not exist. touch $CYGHOME/.zsh_exports to get rid of this message."

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
[[ -r "$CYGZSHALIASES" ]] && source "$CYGZSHALIASES" || echo "$CYGZSHALIASES not found. touch $CYGZSHALIASES to get rid of this message."

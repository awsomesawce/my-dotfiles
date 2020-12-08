# Check zsh doc at /usr/share/doc/zsh
# Backup .dotfiles into $OneDrive/dotfiles_backup

# If you come from bash you might have to change your $PATH.
 export PATH=$HOME/bin:/usr/local/bin:$PATH

# Set separate history for zsh
HISTFILE=~/.zsh_history
# Path to your oh-my-zsh installation. - changed to .antigen - 11/11/2020
export ZSH="~/.antigen"
export EDITOR=micro
export TERM=xterm-256color
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="agnoster"
#ZSH_THEME="amuse"
#ZSH_THEME="aussiegeek"
#ZSH_THEME="fino-time"
#ZSH_THEME="ys"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
 DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

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
#plugins=(git zsh-navigation-tools)


 # Don't load oh-my-zsh.  Instead, let antigen source oh-my-zsh
 # Use `antigen theme <theme>` to change themes
#source ~/.oh-my-zsh/oh-my-zsh.sh
## Still not working right.  Check docs for help on sourcing a separate alias file.
#For now, all aliases are to be at the end of this file.
#if [ -f ~/.zsh_aliases ]; then
#    . ~/.zsh_aliases
#fi

# 
source $HOME/antigen.zsh

# Load the oh-my-zsh's library
antigen use oh-my-zsh

# antigen bundle <<EOBUNDLES
    # Bundles from the default repo (robbyrussell's oh-my-zsh)
antigen bundle git

# z readme is in plugins/z directory
antigen bundle z
#antigen bundle tmux
antigen bundle npm
antigen bundle node
#antigen bundle npx
antigen bundle colored-man-pages

    # Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

    # Fish-like auto suggestions
antigen bundle zsh-users/zsh-autosuggestions

    # Extra zsh completions
antigen bundle zsh-users/zsh-completions

#antigen bundle colorize

antigen bundle command-not-found

#antigen bundle sudo

#antigen bundle ruby
antigen bundle web-search
#antigen bundle python

#antigen bundle common-aliases
# Load the theme
antigen theme fino-time
#antigen theme candy-kingdom
#antigen theme candy
#antigen theme bira
#antigen theme mortalscumbag
#antigen theme candy
#antigen theme jispwoso
#antigen theme duellj
#antigen theme agnoster
#antigen theme random
# Tell antigen that you're done
antigen apply

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
 export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='vim'
# fi

# Compilation flags
 export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
# . /usr/share/powerline/bindings/zsh/powerline.zsh
. $HOME/bin/gh_zsh_completion.zsh

# Example aliases
 alias zshconf="vim ~/.zshrc"
 alias ohmyzsh="cd ~/.oh-my-zsh"
 alias linuxnotes="cd ~/documents/linux_notes"
 # list all files starting with a dot (dotfiles)
 alias lista='ls -d .*'
 alias antigendir='cd ~/.antigen'
 alias h=history
 alias gitjour='cd ~/documents/gitstuff/git-journal'

### Below is a part of the zgen package, unused atm
# load zsh
#source "${HOME}/.zgen/zgen.zsh"

# if the init script doesn't exist
#if ! zgen saved; then

  # specify plugins here
#  zgen oh-my-zsh

  # generate the init script from plugins above
 # zgen save
#fi
## This is where my echos go.
alias zhelp='cd /usr/share/zsh/help'
#alias powerlinedoc = 'cd /usr/share/doc/powerline'
alias zshth='ls ~/.oh-my-zsh/themes'
# Easier git status
alias gitst='git status'

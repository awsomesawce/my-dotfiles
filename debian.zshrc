# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/carlc/.oh-my-zsh"

# Separate zsh history file
HISTFILE=~/.zsh_history
# Some extra variables
export EDITOR=vim
export TERM=xterm-256color
export BROWSER=wslview
export PAGER=less
export SHELL=zsh
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="agnoster"
#ZSH_THEME="alanpeabody"
#ZSH_THEME="bira"
#ZSH_THEME="fino-time"
#ZSH_THEME="half-life"
#ZSH_THEME="rkj-repos"
ZSH_THEME="skaro"
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
plugins=(gitignore command-not-found ssh-agent node npm fzf nvm git debian zsh_reload colored-man-pages web-search)

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
# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="cd ~/.oh-my-zsh"
### Personal aliases start here!
alias wslnotes='cd ~/documents/wsl-notes'
alias tododir='cd ~/documents/wsl-notes/TODO'
alias gitst='git status'
alias zshhelpdir='cd /usr/share/doc/zsh'
alias hlp='bash -c help'
alias zdocdir='cd /usr/share/doc/zsh-common'
alias zhelpdir='cd /usr/share/zsh/help'
alias gitstuff='cd ~/documents/gitstuff'
alias dotfiles='cd ~/.dotfiles/'
alias gaddc='~/.dotfiles/bin/gaddc.sh' # git add . and git commit in one command.
alias npm_location='cd /home/carlc/.nvm/versions/node/v14.15.1/lib/node_modules/npm'
alias abs-guide='cd /usr/share/doc/abs-guide/'
alias absguide='cd /usr/share/doc/abs-guide/'
alias dotbin='cd ~/.dotfiles/bin'
alias typea='type -a'
# check /usr/share/doc/bash-* for more examples, scripts, and completions
alias lzyg='lazygit'
alias gitjour='cd ~/documents/gitstuff/git-journal'
alias vzrc='vim ~/.zshrc' # open ~/.zshrc using vim.
alias ezrc='emacs -nw ~/.zshrc' # open ~/.zshrc using emacs.

# list all files starting with a dot
alias lista='ls -dF .*' # list all dotfiles
. ~/bin/gh_completion.zsh # gh completion script for zsh
alias gitpp='git pull && git push'
alias gpush='git push'
alias zi='zipinfo'
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

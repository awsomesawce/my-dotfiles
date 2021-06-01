# Carl C's Antigen-powered zshrc file
# Updated: Sat 24 Apr 2021 02:45:24 AM EDT
# Changes: Changed `export` to `typeset -gx` which essentially means the same thing.

# Check zsh doc at /usr/share/doc/zsh
# Backup .dotfiles into $OneDrive/dotfiles_backup
# NOTE: This file is now symlinked to "$HOME/.zshrc".
# If you come from bash you might have to change your $PATH.

# BEGIN SHELL OPTIONS

setopt NOBEEP # Keep zsh quiet

#setopt GLOB_DOTS # Same as DOTGLOB or `-4'

# Set this option to shorten patterns like `**/*.sh' to `**.sh'
#setopt GLOB_STAR_SHORT

# Set this option for completion to work like Powershell's
setopt MENU_COMPLETE # `-Y', overrides AUTO_MENU

# Set this option to produce an error on a badly formed pattern for 
#+ filename generation.
#setopt BAD_PATTERN # (+2) Default for zsh mode

# Set this option to treat `#', `~' and `^' characters as part of patterns
#+ for filename generation, etc.
#setopt EXTENDED_GLOB

# Set this option to cd into a directory when just writing the relative dir name.
#setopt AUTO_CD # (-J)

# Set this option to make cd push the old dir onto the dirstack.
#setopt AUTO_PUSHD # (-N)

# END SHELL OPTIONS

typeset -gx PATH=$HOME/.dotfiles/bin:$HOME/gems/bin:$HOME/bin:/usr/local/bin:/home/carlc/go/bin:$PATH

# TODO: move path allocations to .zshenv or .zprofile
typeset -gx PATH="$PATH:$HOME/.deno/bin" # Add deno's bin dir to `$PATH`.
# Set separate history for zsh
HISTFILE=~/.zsh_history
# Path to your oh-my-zsh installation. - changed to .antigen - 11/11/2020
# TODO: switch to a different zsh plugin system
typeset -gx ZSH="$HOME/.antigen"
# Some extra variables
# `typeset -gx` is literally the same as `export`, so it is up to
#+ the programmer as to what style they want.
typeset -gx EDITOR=vim
typeset -gx TERM=xterm-256color
typeset -gx BROWSER=wslview
typeset -gx PAGER=less
typeset -gx SHELL=zsh

# Attach projectVars script to variable
typeset -gx projectVarsScript="$HOME/.projectVars"
# Load script based on that variable
if [ -r "$projectVarsScript" ]; then
    . "$projectVarsScript"
    echo "Sourced \"$projectVarsScript\""
else
    echo "\$projectVarsScript hasn't been found at $projectVarsScript"
    print "Please fix this."
    print "This script should be used to house your env vars for your various projects"
    print "located across your filesystem."
fi
# This script has all your specific project variables and is a great dumping ground for
# run-help fix
unalias run-help
autoload -Uz run-help
alias help=run-help # This still isn't working for some reason TODO
autoload -Uz run-help-ip # This only works if run-help works first.
# Themse are loaded using Antigen
# ZSH_THEME unnecessary and redundent.
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

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
# COMPLETION_WAITING_DOTS="false"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
 DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Plugins are loaded using Antigen
# This array is used for oh-my-zsh, not antigen.
#plugins=(git zsh-navigation-tools)


 # Don't load oh-my-zsh.  Instead, let antigen source oh-my-zsh
 # Use `antigen theme <theme>` to change themes

# TODO: use a different plugin manager!
# Source main antigen script
source $HOME/bin/antigen.zsh

# Load the oh-my-zsh's library
antigen use oh-my-zsh

# antigen bundle <<EOBUNDLES
    # Bundles from the default repo (robbyrussell's oh-my-zsh)
antigen bundle git
antigen bundle git-extras
#antigen bundle gitfast
antigen bundle ssh-agent
# z readme is in plugins/z directory
#antigen bundle z
#antigen bundle autojump
#antigen bundle wd
#antigen bundle tmux
#antigen bundle npm
#antigen bundle node
#antigen bundle yarn
#antigen bundle npx
antigen bundle colored-man-pages
#antigen bundle copydir
antigen bundle cp
antigen bundle direnv
antigen bundle dotenv
antigen bundle jsontools
antigen bundle urltools
antigen bundle ubuntu

antigen bundle command-not-found
#antigen bundle copyfile
#antigen bundle pipenv
#antigen bundle pip
#antigen bundle pylint

#antigen bundle sudo
#antigen bundle dotnet

#antigen bundle ruby
#antigen bundle bundler
#antigen bundle web-search
#antigen bundle python

antigen bundle common-aliases

    # Syntax highlighting bundle.
    # Turn this off when cpu power is needed
antigen bundle zsh-users/zsh-syntax-highlighting

    # Fish-like auto suggestions
#antigen bundle zsh-users/zsh-autosuggestions

    # Extra zsh completions
antigen bundle zsh-users/zsh-completions

# Load the theme
#antigen theme fino-time
#antigen theme candy-kingdom
#antigen theme candy
antigen theme bira
#antigen theme mortalscumbag
#antigen theme jispwoso
#antigen theme duellj
#antigen theme agnoster
#antigen theme ys
#antigen theme random
# Tell antigen that you're done
antigen apply

# User configuration
# TODO: add more manpaths when you find one.
 export MANPATH="/usr/local/man:$MANPATH"

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

if [ -r "$HOME/.zsh_aliases" ]; then
	source ~/.zsh_aliases
else
	echo "~/.zsh_aliases not available"
fi

# Also load ~/.shell_aliases
[[ -r "$HOME/.shell_aliases" ]] && . ~/.shell_aliases || echo "Could not source ~/.shell_aliases"

# Source functions script from ~/.shell_functions
# Step 1, initiate dotfilesubuntu variable.
dotfilesubuntu=$HOME/.dotfiles/ubuntu

# Source main shell function script.  Symlinked from ~/.dotfiles/ubuntu.
if [[ -f ~/.shell_functions ]]; then
    . ~/.shell_functions
else
    echo "~/.shell_functions not where its supposed to be."
fi

# Example aliases
 alias ohmyzsh="cd ~/.oh-my-zsh"
 alias linuxnotes="cd ~/documents/linux_notes"
 # list all files starting with a dot (dotfiles)
 alias listdot='ls -d .*'
 alias gotoantigendir='cd ~/.antigen'
 alias h=history
 alias gitjour='cd ~/documents/gitstuff/git-journal'
alias zhelp='cd /usr/share/zsh/help'
alias listzshthemes='ls ~/.oh-my-zsh/themes' # This might be better off as a function
# Easier git status
alias gitst='git status'
alias gs='git status'
# Added by apt's version of thefuck
# Next time uninstall thefuck from pip3 before installing thru apt
#eval $(thefuck --alias)
eval "$(lesspipe)" # This enables less to automatically view gzipped text files
                   # without having to decompress it first.
# Enable direnv hook in zsh
#eval "$(direnv hook zsh)"

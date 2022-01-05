# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam2

setopt histignorealldups sharehistory
setopt nolistbeep

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1500
SAVEHIST=1500
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

export PAGER=$(which less)
export EDITOR=$(which vim)
export UBUNTU_DOTFILES=~/.dotfiles/ubuntu
export common_env="$UBUNTU_DOTFILES/lib/.env.common"

if [ -r $common_env ]; then
    . $common_env
    echo "Loaded $common_env" >&2
else
    echo "\$common_env not there" >&2
fi

if [[ -r ~/.zsh_aliases_new ]]; then
    echo "Loading ~/.zsh_aliases_new"
    source ~/.zsh_aliases_new
else
    echo "Cannot find ~/.zsh_aliases_new file, skipping"
fi

__my_zsh_funcs() {
    # This may not work because of scoping
    local a=~/.zsh_functions
    if [ -r "$a" ]; then
	echo "Loading $a" >&2
	. "$a"
	return 0
    else
	echo "Cannot find $a, skipping"
	return 1
    fi
}
__my_zsh_funcs

#source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/carlc/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
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

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
conda activate sci
# switch to sci env

##### BASIC ZSH CONFIG FOR MSYS #####

export PAGER=less
export EDITOR=vim

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_histfile
HISTSIZE=1500
SAVEHIST=2000
setopt autocd extendedglob notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/Carl/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
autoload -U promptinit
promptinit
# Add throw for easy access to exception messages in scripts
autoload -Uz throw

alias ls="ls --color"

if [[ -r ~/.zsh_aliases ]]; then
    echo "found ~/.zsh_aliases, sourcing"
    . ~/.zsh_aliases
else
    throw "Did not find zsh_aliases, skipping"
    echo "\$EXCEPTION=$EXCEPTION"
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

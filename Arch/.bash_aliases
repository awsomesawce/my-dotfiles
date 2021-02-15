########## Bash Aliases ##########
# Author: Carl C
# last edit: 2/23/2021
## shellcheck ignore SC2139 SC2039 SC2162
alias g='git'
alias notable="cd /mnt/d/Carl/OneDrive/Notable"
# config aliases
alias nvbaliases="nvim ~/.bash_aliases"
copybashrc() { 
    local DOTDIRARCH="$HOME/.dotfiles/Arch"
    if [ -r $DOTDIRARCH/.bashrc ]; then
	echo "Bashrc is there already.  Copy it?"
	read
	if [ "$REPLY" = "y" ]; then
	    command cp -i "$HOME/.bashrc" "$DOTDIRARCH/.bashrc"
	else
	    echo "Not copying"
	fi
    else
	return 0
    fi
}
alias nvbrc="nvim ~/.bashrc"
alias vbrc="vim ~/.bashrc"
NVIM_CONFIG=~/.config/nvim/init.vim
alias nvimconfig="nvim $NVIM_CONFIG" # Tell shellcheck to stfu about this line
# tar aliases
alias tvf='tar -tvf'
alias cvf="tar -cvf"
alias bcvf="bsdtar -cvf"
alias btvf="bsdtar -tvf"
# pacman aliases
alias pmfl='pacman -Fl'
alias pm='pacman'
alias pmii='pacman -Sii'
alias pms="pacman -Ss"
alias pmii='pacman -Sii'
alias pmc='pacmatic' # pacmatic is a weird wrapper to pacman
alias lsf="ls -F"
alias ducks='w3m duckduckgo.com'
alias pminstall='sudo pacman -S'
alias edit='kak'
alias ..='cd ..'
alias winnotes="cd /home/carlc/onedrive/Notable/notes"
alias arm=/home/carlc/bin/shell_learning/autorm2.sh
alias gitst='git status'

# Windows MSYS2 Bash Aliases
# OriginalLocation: ~/.bash_aliases
# BackupLocations: "$MSYSENVDir/.bash_aliases", "$msys_onedrive/.bash_aliases"
# Author: Carl Capodice
# Date: 5/5/2021

msys_dotfiles_git=~/gitstuff/my-dotfiles/msys2
export BASH_ALIASES_FILE="$HOME/.bash_aliases"
bal="$BASH_ALIASES_FILE"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias l='ls -lhF'
alias gotomydotfiles="cd $msys_dotfiles_git"
alias goto-dotfilesbackup="cd $OneDrive/dotfiles_backup"
alias gitst='git status'
alias vbrc='vim ~/.bashrc'
alias pmii="pacman -Sii"
alias pms="pacman -Ss"
alias pminst="pacman -S"
alias pmfiles="pacman -Fl"
alias pmfl="pacman -Fl"
alias cp='command cp -i'

# Temporary vim alias
alias vim="vim -u ~/.vimrc"

function backup_bash_aliases {
    if [[ -r "$bal" ]]; then
	command cp -i "$bal" "$msys_dotfiles_git" || exit 1
	command cp -i "$bal" "$msys_onedrive" || exit 1
	return 0
    else
	echo "$bal does not seem to be there." 2>&1
	return 1
    fi
}
alias pcmn=pacman

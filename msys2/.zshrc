
fpath=("$HOME/gitstuff/zsh-completions/src" $fpath)
# The current completion script for curl is super minimal and needs some work

# Temporary vim alias so it recognizes ~/.vimrc
alias vim=vim -u /c/Users/Carl/.vimrc


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/Carl/sdkman"
[[ -s "/home/Carl/sdkman/bin/sdkman-init.sh" ]] && source "/home/Carl/sdkman/bin/sdkman-init.sh"

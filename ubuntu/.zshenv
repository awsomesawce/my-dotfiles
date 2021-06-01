# Carl's ~/.zshenv
# Load environment variables with zshenv.
#
# Enable next line for x11 setup for x410
[ -z "$DISPLAY" ] && export DISPLAY=127.0.0.1:0.0

# Export PATH in zshenv to make sure it's set just in case bash isn't used for login. 
# `wsl -u carlc -e zsh` will bypass the main shell and invoke `zsh` from the start.
# 
export PATH=$HOME/.dotfiles/bin:$HOME/gems/bin:$HOME/bin:/usr/local/bin:/home/carlc/go/bin:$PATH
# PATH contains personal bin folder, go bin, rubygems bin, usr local bin, .dotfiles bin.

# nvm installed variables and scripts
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# github cli completion for zsh
eval $(gh completion -s zsh)
PATH="$PATH:/home/carlc/.npm-packages/bin"

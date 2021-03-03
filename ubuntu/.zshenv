# Carl's ~/.zshenv
# Load environment variables with zshenv.
#
# Enable next line for x11 setup for x410
[ -z "$DISPLAY" ] && export DISPLAY=127.0.0.1:0.0

# nvm installed variables and scripts
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

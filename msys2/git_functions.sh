#!/usr/bin/env bash
# Here is a collection of bash-compatible git functions for convenience.
# This is meant to be sourced from `~/.bashrc` or `~/.zshrc`

gitaddcommit() {
if [ $# -eq 0 ]; then
echo "Usage ${0} "commit message""
else
if [[ -x /usr/bin/git ]] || [[ -x "$(which git > /dev/null)" ]]; then
git add . && git commit -m "$*"
else
echo "Cannot find git." 2>&1
fi
fi
}
# Set alias for this function
alias gaddcom=gitaddcommit

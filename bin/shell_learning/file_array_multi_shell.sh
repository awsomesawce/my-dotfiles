#!/bin/bash
# Get all files involved in bashrc

if [[ -n "$BASH_VERSION" ]] && [[ -z "$KSH_VERSION" ]] && [[ -z "$ZSH_VERSION" ]]; then
    export bash_file_arr=( "$HOME/.bash_aliases" "$HOME/.shell_aliases" "$HOME/.shell_functions" "$HOME/.projectVars" "~/.bashrc"\
        "This is a list of bash files" )
fi

if [[ -n "$ZSH_VERSION" ]] && [[ -z "$BASH_VERSION" ]]; then
    export zshFileArr=("$HOME/.zshrc" "$HOME/.zsh_aliases" "$HOME/.shell_functions" "$HOME/.shell_aliases" "$HOME/.zshenv")
    typeset -A zshAssocArr=([description]="This is an associative array" [zshExe]="$(which zsh)" [1]="oneVal" [2]="twoVal")
fi

bash_list_config() {
        for file in "${bash_file_arr[@]}"; do
            echo "File is $file"
        done
}

zshListConfOne() {
    # shellcheck says the variable must be quoted...I thought the opposite.
    for a in "${zshFileArr[@]}"; do
        if [[ -f "$a" ]]; then
            echo "File is $a"
        else
            echo "One of these files has an error"
        fi
    done
}


# vim:shiftwidth=4 filetype=bash autoindent expandtab foldmethod=marker

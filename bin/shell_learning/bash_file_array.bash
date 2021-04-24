#!/bin/bash
# Source all files involved in bashrc

if [[ -n "$BASH_VERSION" ]] && [[ -z "$KSH_VERSION" ]] && [[ -z "$ZSH_VERSION" ]]; then
    export bash_file_arr=( "$HOME/.bash_aliases" "$HOME/.shell_aliases" "$HOME/.shell_functions" "$HOME/.projectVars" "~/.bashrc"\
        "This is a list of bash files" )
fi

bash_list_config() {
        for file in "${bash_file_arr[@]}"; do
            echo "File is $file"
        done
}

#!/usr/bin/env bash
# Multitar - create multiple tarfiles in one go

set -e # errexit
set -u # unset variables treated as errors
set -o pipefail # if a pipe fails, the script fails (afaik)

typeset -a tarfiletypes
tarfiletypes=("gz" "bz2" "xz" "zst")
usage="Usage: $0 \"base_filename\" directory_name

multitar creates multiple tarfiles at the same time using 4 different
compression algorithms.

The algorithms are in the script variable \${tarfiletypes[@]}
Type \"algs\" as this script\'s first arg to see the algorithms

NOTE: Do not type the file extensions as args, this script will take care of
file extensions for you."

if [[ "$1" == "silly" ]] && [[ ! -d "$1" ]] {
    # This is a bracketed if statement test.  Only works in some
    # new bashes and zshs.
    echo "Here is a silly message for fun"
    echo "exiting with 420 exitcode"
    echo "hah"
    exit 2
}

if ! command -v tar > /dev/null; then 
    echo "Tar is not on PATH for some reason. Exiting" >&2 && exit 1
fi

if [[ "$#" -eq 0 ]] || [[ "$1" == "--help" ]] || [[ "$1" == "-h" ]] ; then
    printf '%s\n' "$usage"
    exit 1
elif [[ "$1" == "algs" ]]; then
    printf '%s\n' "${tarfiletypes[@]}"
else
    [[ ! -d "$1" ]] && {
        echo "$1 is not a valid directory.  Type --help for more info"
        exit 1
    }
    [[ -d "$1" ]] && {
        for t in "${tarfiletypes[@]}"; do
            echo "Creating $t tarfile from $1"
            # tar command ...

        done
        printf '%s\n' "tar procedure done.  Exiting"
        exit 0
    }
fi
exit 0

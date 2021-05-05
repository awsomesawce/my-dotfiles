#!/bin/bash

# These are "safe bash options" from vim-snippets
# This file is still in progress
set -euo pipefail
IFS=$'\n\t'

__ScriptVersion="0.0.1"

#===  FUNCTION  ================================================================
#         NAME:  usage
#  DESCRIPTION:  Display usage information.
#===============================================================================
function usage
{
    echo "Usage :  $0 [options] [--]

    Options:
    -h|help       Display this message
    -v|version    Display script version
    -t|test 	  Display a test message"

}    # ----------  end of function usage  ----------

#-----------------------------------------------------------------------
#  Handle command line arguments
#-----------------------------------------------------------------------
if test $# -eq 0; then
    echo "You did not type an argument"
    usage
    exit 1
fi

while getopts ":hvt" opt
do
  case opt in

    h|help     )  usage; exit 0   ;;

    v|version  )  echo "$0 -- Version __ScriptVersion"; exit 0   ;;

    t|testing  )  echo "Here is a test message"; exit 0  ;;

    * )  echo -e "\n  Option does not exist : OPTARG\n"
                usage; exit 1   ;;

  esac    # --- end of case ---
done
shift $((OPTIND-1))

echo "Did you think that was a nice script? y or n"
read -r ANSWER
if [[ "$ANSWER" == "y" ]]; then
    echo "You entered y.  Thank you!"
elif [[ "$ANSWER" == "n" ]]; then
    echo "You entered n.  Sorry about that."
else
    echo "You did not answer y or n"
fi

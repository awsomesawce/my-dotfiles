# These are "safe bash options" from vim-snippets
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
    -v|version    Display script version"

}    # ----------  end of function usage  ----------

#-----------------------------------------------------------------------
#  Handle command line arguments
#-----------------------------------------------------------------------

while getopts ":hv" opt
do
  case opt in

    h|help     )  usage; exit 0   ;;

    v|version  )  echo "$0 -- Version __ScriptVersion"; exit 0   ;;

    * )  echo -e "\n  Option does not exist : OPTARG\n"
                usage; exit 1   ;;

  esac    # --- end of case ---
done
shift $((OPTIND-1))

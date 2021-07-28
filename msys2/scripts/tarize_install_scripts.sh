#!/usr/bin/env bash
# Take all files in the installscripts directories and tarize them

tarize_install_scripts () 
{ 
    if [[ $PWD == "$HOME" ]]; then
        pat=(Downloads/InstallScripts/* bin/installscripts/*)
        bsdtar -acvf CInstScripts_$(date -I).tar.zst ${pat[@]} || return 1
    else
        echo "Must be in home directory, try again" 1>&2
	return 1
    fi
    return 0
}
tarize_install_scripts || exit 1
echo "Script successful" 2>&1
exit 1

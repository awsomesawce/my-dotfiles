#!/usr/bin/env bash
# This is the most concise script I have written for backup
# Author: Carl C.
# Date: Thu, May 27, 2021 11:16:11 AM

echo "Starting backup script"

cp_and_mv_msys2_stuff() {
    # The `$msys2_dotfiles_git` variable needs to be set properly.
    if [[ -d "$msys2_dotfiles_git" ]]; then
	cd $(dirname "$msys2_dotfiles_git") || return 1
	echo "In $(pwd) now.  Creating tar archives"
	command bsdtar -acf MDF_MSYS2-latest.tar.xz msys2/*
	bsdtar -acf MDF_MSYS2-latest.tar.gz msys2/*
	bsdtar -acf MDF_MSYS2-latest.zip msys2/*
	echo "Moving items to correct directory now."
	mv ./MDF_MSYS2-* /d/Carl/OneDrive/tarfiles/msys_related_tarfiles || exit 1
	echo "Your files are here: $(ls /d/Carl/OneDrive/tarfiles/msys_related_tarfiles)"
	echo "Done!"
    else
	echo "\$msys2_dotfiles_git directory is not there.  Try again"
    fi
}

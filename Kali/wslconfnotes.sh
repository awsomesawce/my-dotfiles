#!/usr/bin/env bash
# WSLConf file detection
# DESCRIPTION:
#   Detects whether a file called `/etc/wsl.conf`
# Check https://docs.microsoft.com/en-us/windows/wsl/wsl-config#wslconf for information
#

if [[ -r /etc/wsl.conf ]]; then
    echo "/etc/wsl.conf file detected."
else
    echo "/etc/wsl.conf file not detected."
fi

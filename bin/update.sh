#!/bin/sh
# Use chmod u+x {{file}} to make it executable by default
echo "This will update the system"
echo "Updating system"
sudo apt update && sudo apt upgrade -y
echo "Update complete"

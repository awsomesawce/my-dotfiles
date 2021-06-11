# Copys all msys2 scripts in ~/bin to this folder.
$source = gci ~/bin/msys*, ~/bin/mbash*, ~/bin/pwsh*, ~/bin/mzsh*
copy-item $b ~/gitstuff/my-dotfiles/msys2/scripts

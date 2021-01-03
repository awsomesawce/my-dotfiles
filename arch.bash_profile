#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

eval $(gh completion -s bash)

# Enable next line for x11 setup for x410
[ -z $DISPLAY ] && export DISPLAY=127.0.0.1:0.0

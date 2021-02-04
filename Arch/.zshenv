source "$HOME/.cargo/env"
# Enable next line for x11 setup for x410
[ -z $DISPLAY ] && export DISPLAY=127.0.0.1:0.0
eval $(gh completion -s zsh)
export EXECIGNORE="*.dll"

DBUS_SESSION_BUS_ADDRESS='unix:abstract=/tmp/dbus-3TIMF07ez8,guid=07ae908bfca413e61ab16da16018f824';
export DBUS_SESSION_BUS_ADDRESS;
DBUS_SESSION_BUS_PID=24818;

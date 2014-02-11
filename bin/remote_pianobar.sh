#!/bin/sh

echocmd="/bin/echo -n"
ctlfile="$HOME/.config/pianobar/ctl"

# pianobar running? echo would block otherwise
ps -C 'pianobar' > /dev/null

if [ $? -ne 0 ]; then
#echo 'naughty.notify({title = "pianobar", text = "Not running"})' | awesome-client -
i3-nagbar -m "error: pianobar not running"
exit 1;
fi

case "$1" in
playpause)
$echocmd p > $ctlfile
;;
next)
$echocmd n > $ctlfile
;;
prev)
$echocmd t > $ctlfile
;;
love)
$echocmd + > $ctlfile
;;
stop)
$echocmd - > $ctlfile
;;
esac

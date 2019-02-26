#!/bin/bash

PATH="$PATH:/usr/bin/"
DISPLAY="2"
DEPTH="24"
GEOMETRY="1280x720"
OPTIONS="-depth ${DEPTH} -geometry ${GEOMETRY} :${DISPLAY}"
#Use line below instead if not forwarding port through SSH
#OPTIONS="-depth ${DEPTH} -geometry ${GEOMETRY} :${DISPLAY} -localhost no"

case "$1" in
start)
/usr/bin/vncserver ${OPTIONS}
;;

stop)
/usr/bin/vncserver -kill :${DISPLAY}
;;

restart)
$0 stop
$0 start
;;
esac
exit 0

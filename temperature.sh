#!/bin/bash
XYMONSRV="XYMON SERVER"
/usr/lib/hobbit/client/bin/bb $XYMONSRV "status `hostname`.temperature green `date`
`awk '{printf("&green CPU %.0f %.0f\n",$1/1e3,(($1*1.8)/1e3)+32)}' /sys/class/thermal/thermal_zone0/temp`
"

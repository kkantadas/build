#!/bin/sh
if [ "$(cat /sys/class/net/eno1/operstate 2>/dev/null)" = "up" ]; then
    echo " up"
elif [ "$(cat /sys/class/net/wlan0/operstate 2>/dev/null)" = "up" ]; then
    perc=$(awk '/^\s*w/ {print $3}' /proc/net/wireless | cut -d. -f1)
    echo " ${perc}%"
else
    echo "n/a"
fi


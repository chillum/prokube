#! /bin/sh
echo "Starting CPU stress test, will generate 200% load. Press Ctrl-C to abort."
trap "killall yes; exit 0" 2

yes >/dev/null &
yes >/dev/null &

sleep 15m
sleep 10 # ten more seconds for alert to fire for sure
echo -n "\a" # beep
echo "Check Prometheus for alerts."
wait %1 %2

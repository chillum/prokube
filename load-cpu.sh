echo Starting CPU stress test, will generate 200% load. Press Ctrl-C to abort.
trap "killall yes" 2

yes >/dev/null &
yes >/dev/null &

sleep 15m
echo Check Prometheus for alerts.
wait %1 %2

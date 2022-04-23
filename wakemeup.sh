#!/bin/bash

procs=$(ps a --forest)
echo "$procs" | nl -v0
echo ""
echo -n "Please enter the process list number (not the pid): " 
read number

proc=$(echo "$procs" | tail -n "+$((number+1))" | head -n1)
pid=$(echo "$proc" | sed 's/^ *//g' | cut -d ' ' -f1)

echo "Waiting for $pid to finish..."

# defaults to pushover webhook, customize it as needed.
nohup bash -c "tail --pid $pid -f /dev/null && curl -o /dev/null -s \
  --form-string \"token=\" \
  --form-string \"user=\" \
  --form-string \"message=${pid} is done!\" \
  https://api.pushover.net/1/messages.json" > /dev/null &


#!/bin/bash
for ((i=0;i<10;i++));do
pids="$($_CMD pgrep java)"
if [ ! $pids ]; then
           /fs/start.sh
fi
sleep 6
done

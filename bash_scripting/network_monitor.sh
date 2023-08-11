#!/bin/bash
while true; do
    ping -c 1 google.com > /dev/null
    if [[ $? -eq 0 ]]; then
        echo "$(date): Network is up"
    else
        echo "$(date): Network is down"
    fi
    sleep 10
done

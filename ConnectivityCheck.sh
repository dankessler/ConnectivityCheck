#!/bin/sh

while true
do
    ping -c 1 google.com &> /dev/null
    up=$?
    [ $up -eq 0 ] && echo `date`,up >> ~/blamecomcast.csv
    [ $up -eq 0 ] || echo `date`,down >> ~/blamecomcast.csv
    sleep 60
done
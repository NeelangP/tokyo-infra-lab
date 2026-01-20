#!/bin/bash
TARGET="8.8.8.8"
NOW=$(date "+%Y-%m-%d %H:%M:%S")

ping -c 1 -q $TARGET > /dev/null 2>&1

if [ $? -eq 0 ]; then
   echo "[$NOW] CONNECTION UP: Reached $TARGET"
else
   echo "[$NOW] CONNECTION DOWN: Cannot reach $TARGET"
fi

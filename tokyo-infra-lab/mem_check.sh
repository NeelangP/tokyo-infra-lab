#!/bin/bash
NOW=$(date "+%Y-%m-%d %H:%M:%S")
AVAILABLE=$(free -m | awk 'NR==2 {print $7}')

if [ $AVAILABLE -lt 8000 ]; then
   echo "[$NOW]DANGER: LOW MEMORY! Only $AVAILABLE MB left"
else
   echo "[$NOW]Memory is fine: $AVAILABLE MB available"
fi

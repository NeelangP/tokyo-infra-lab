#!/bin/bash

# --- 1. CONFIGURATION ---
NOW=$(date "+%Y-%m-%d %H:%M:%S")
TARGET="8.8.8.8"
LOG_FILE="/home/neelang_p/master_log.txt"

# --- 2. GATHER DATA ---
# Memory Check
AVAILABLE=$(free -m | awk 'NR==2 {print $7}')

# Network Check (1 packet, silent)
ping -c 1 -q $TARGET > /dev/null 2>&1
NET_STATUS=$?

# --- 3. THE REPORT LOGIC ---
echo "------------------------------------------" >> $LOG_FILE
echo "REPORT GENERATED AT: $NOW" >> $LOG_FILE

# Output Memory Status
if [ $AVAILABLE -lt 500 ]; then
  echo "[MEM] STATUS: DANGER! Only $AVAILABLE MB left." >> $LOG_FILE
else
  echo "[MEM] STATUS: OK ($AVAILABLE MB available)." >> $LOG_FILE
fi

# Output Network Status
if [ $NET_STATUS -eq 0 ]; then
  echo "[NET] STATUS: CONNECTED to $TARGET" >> $LOG_FILE
else
  echo "[NET] STATUS: DISCONNECTED!" >> $LOG_FILE
fi

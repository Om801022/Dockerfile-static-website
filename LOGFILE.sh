#!/bin/bash
LOGFILE="pc_details_$(date +%F).log"
echo "--- System Report ---"> $LOGFILE
echo "Date: $(date)" >> $LOGFILE
echo -e "\n--- Hostname & Kernal ---" >> $LOGFILE
hostnamectl >> $LOGFILE
echo -e "\n--- CPU Info ---">> $LOGFILE
lscpu | head -n 20 >> $LOGFILE
echo -e "\n--- Memory Info ---" >> $LOGFILE
free -h >> $LOGFILE
echo -e "\n--- Disk Usage ---">> $LOGFILE
df -h >> $LOGFILE

echo "Details saved to $LOGFILE"

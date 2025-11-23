#!/bin/bash
#
# Script to analyse server performance stats
#
#
echo "Total CPU usage"
mpstat 1 1 |sed -n 2,4p
echo

echo "Total memory usage"
free -ht
echo

echo "Total disk usage"
df -h
echo

echo "Top 5 processes by CPU usage"
ps -eo user,comm,pid,%cpu --sort=-%cpu |head -n 6
echo

echo "Top 5 processes by memory usage"
ps -eo user,comm,pid,%mem --sort=-%mem |head -n 6
echo

echo "Server uptime, load average & logged in users"
w
echo

echo "OS version and information"
cat /etc/os-release| head -n 2
echo

echo "Failed login attempts"
lastb
echo

echo "Server Performance Report: $(date +%F)"
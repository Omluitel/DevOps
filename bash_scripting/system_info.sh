#!/bin/bash
cpu_info=$(grep "model name" /proc/cpuinfo | head -1 | cut -d ':' -f 2)
memory_info=$(free -h | awk '/Mem/ {print $2}')
disk_usage=$(df -h / | awk '/\// {print $5}')
echo "CPU: $cpu_info"
echo "Memory: $memory_info"
echo "Disk Usage: $disk_usage"

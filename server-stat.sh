#!/bin/bash

echo "===== AWS Server Performance Stats ====="
echo "Generated on: $(date)"
echo "========================================"


# CPU usage
echo -e "\n--- CPU Usage ---"
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Usage: " 100 - $8 "%"}'

# Memory usage
echo -e "\n--- Memory Usage ---"
free -h
free | awk '/Mem:/ {
    used=$3; total=$2;
    printf "Used: %.2f%%\n", used/total*100
}'

# Disk usage
echo -e "\n--- Disk Usage ---"
df -h --total | grep total
df --total | grep total | awk '{printf "Used: %.2f%%\n", $5}'

# Top 5 CPU processes
echo -e "\n--- Top 5 Processes by CPU Usage ---"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6

# Top 5 Memory processes
echo -e "\n--- Top 5 Processes by Memory Usage ---"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6

# OS version
echo -e "\n--- OS Version ---"
grep PRETTY_NAME /etc/os-release
  
# Uptime
echo -e "\n--- Uptime ---"
uptime -p

# Load average
echo -e "\n--- Load Average ---"
uptime | awk -F'load average:' '{ print $2 }'

# Logged in users
echo -e "\n--- Logged in Users ---"
who

# Failed login attempts
echo -e "\n--- Failed Login Attempts ---"
grep "Failed password" /var/log/auth.log | wc -l 2>/dev/null || echo "Not available (requires root or permission)"

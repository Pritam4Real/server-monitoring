# server-monitoring
Server-Monitoring is a lightweight Bash script designed to analyze real-time server performance on Linux-based AWS EC2 instances. It provides key system metrics such as CPU usage, memory and disk utilization, and highlights top resource-consuming processes. Ideal for quick diagnostics and system health checks in cloud environments.


# 📊 AWS Server Performance Stats

A simple and powerful Bash script to monitor key system performance metrics on any Linux server, particularly useful for **AWS EC2 instances**.

---

## ✅ Features

This script collects and displays:

- ✅ CPU Usage  
- ✅ Memory Usage (Free vs Used, %)
- ✅ Disk Usage (Total, Free vs Used, %)
- ✅ Top 5 Processes by:
  - CPU Usage
  - Memory Usage
- ✅ OS Version
- ✅ Uptime
- ✅ Load Average
- ✅ Logged-in Users
- ✅ Failed SSH Login Attempts

---

## 📁 File

**`server-stat.sh`**

> 📌 Note: Full script is in the repository.

---

## ⚙️ How to Use

1. **Clone the repository or copy the script**

```bash
git clone https://github.com/Pritam4Real/server-monitoring.git
cd server-monitoring
```

2. **Make the script executable**

```bash
chmod +x server-stat.sh
```

3. **Run the script**

```bash
./server-stat.sh
```


## 🖥️ Sample Output

```
===== AWS Server Performance Stats =====
Generated on: Sat May 3 12:00:00 UTC 2025
========================================

--- CPU Usage ---
CPU Usage: 14.5%

--- Memory Usage ---
              total        used        free
Mem:           3.8G        1.2G        2.6G
Used: 31.58%

--- Disk Usage ---
total        30G   10G   20G   33%
Used: 33.00%

--- Top 5 Processes by CPU Usage ---
PID  COMMAND  %CPU
...

--- Failed Login Attempts ---
0
```

---

## 📦 Requirements

- Any Linux distro (Ubuntu, Amazon Linux, CentOS)
- `top`, `free`, `df`, `ps`, `awk`, and `grep` (standard on most systems)
- For failed login attempts: access to `/var/log/auth.log` or similar

---

## 🛡️ Permissions

To capture failed login attempts, run as root or ensure the script has permission to read `/var/log/auth.log`.


---

## 📄 License

MIT License – feel free to use, modify, and contribute.

---
https://roadmap.sh/projects/server-stats

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
========================================

--- CPU Usage ---
CPU Usage: 100%

--- Memory Usage ---
               total        used        free      shared  buff/cache   available
Mem:           957Mi       317Mi       158Mi       896Ki       638Mi       639Mi
Swap:             0B          0B          0B
Used: 33.20%

--- Disk Usage ---
total           8.5G  2.0G  6.4G  24% -
Used: 24.00%

--- Top 5 Processes by CPU Usage ---
    PID COMMAND         %CPU
   1147 sshd             0.1
      1 systemd          0.0
    591 snapd            0.0
    949 amazon-ssm-agen  0.0
    125 systemd-journal  0.0

--- Top 5 Processes by Memory Usage ---
    PID COMMAND         %MEM
    591 snapd            3.3
    183 multipathd       2.7
    736 unattended-upgr  2.3
    584 networkd-dispat  2.1
    949 amazon-ssm-agen  1.9

--- OS Version ---
PRETTY_NAME="Ubuntu 24.04.2 LTS"

--- Uptime ---
up 37 minutes

--- Load Average ---
 0.00, 0.00, 0.00

--- Logged in Users ---
ubuntu   pts/0        2025-05-03 07:08 (182.156.136.243)
ubuntu   pts/1        2025-05-03 07:08 (182.156.136.243)

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

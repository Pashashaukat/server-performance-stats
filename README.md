# server-performance-stats
## Bash script to analyze server performance stats
This script provides a quick snapshot of server health and performance. It checks:

- CPU usage  
- Memory usage  
- Disk usage  
- Top processes (CPU & memory)  
- Uptime and load average  
- OS version and information  
- Logged-in users  
- Failed login attempts  

## Sample Output

```shell
[root@localhost ~]# ./server-stats.sh
Total CPU usage

02:52:53 PM  CPU    %usr   %nice    %sys %iowait    %irq   %soft  %steal  %guest  %gnice   %idle
02:52:54 PM  all    0.50    0.00    0.50    0.00    0.50    0.50    0.00    0.00    0.00   98.00

Total memory usage
               total        used        free      shared  buff/cache   available
Mem:           1.7Gi       666Mi       1.0Gi       1.0Mi       139Mi       1.0Gi
Swap:          2.0Gi       634Mi       1.4Gi
Total:         3.7Gi       1.3Gi       2.4Gi

Total disk usage
Filesystem           Size  Used Avail Use% Mounted on
devtmpfs             4.0M     0  4.0M   0% /dev
tmpfs                870M     0  870M   0% /dev/shm
tmpfs                348M   11M  338M   3% /run
/dev/mapper/rl-root   17G  6.9G   11G  41% /
/dev/nvme0n1p1       960M  467M  494M  49% /boot
tmpfs                174M  108K  174M   1% /run/user/1000
/dev/sr0              11G   11G     0 100% /run/media/moon/Rocky-9-5-x86_64-dvd
tmpfs                174M   36K  174M   1% /run/user/1003

Top 5 processes by CPU usage
USER     COMMAND             PID %CPU
root     kworker/1:1-eve   56018  2.3
sal      systemd           57641  1.3
root     kswapd0              55  0.3
root     vmtoolsd            805  0.3
moon     vmtoolsd           5889  0.3

Top 5 processes by memory usage
USER     COMMAND             PID %MEM
moon     gnome-shell        5626  2.6
sal      systemd           57641  0.7
root     sshd              57620  0.6
root     systemd               1  0.5
moon     gnome-software     5879  0.4

Server uptime, load average & logged in users
 14:52:54 up  2:11,  4 users,  load average: 0.51, 3.28, 2.13
USER     TTY        LOGIN@   IDLE   JCPU   PCPU WHAT
moon     seat0     12:42    0.00s  0.00s  0.01s /usr/libexec/gdm-wayland-session --register-session gnome-session
moon     tty2      12:42    2:11m  0.09s  0.08s /usr/libexec/gnome-session-binary
moon     pts/1     12:43    4.00s  1.36s  0.04s sshd: moon [priv]
sal      pts/2     14:52   10.00s  0.02s  0.02s -bash

OS version and information
NAME="Rocky Linux"
VERSION="9.6 (Blue Onyx)"

Failed login attempts
sal      ssh:notty    10.0.0.216       Sun Nov 23 14:52 - 14:52  (00:00)
moon     ssh:notty    10.0.0.216       Sun Nov 23 14:05 - 14:05  (00:00)
moon     ssh:notty    10.0.0.216       Sun Nov 23 13:33 - 13:33  (00:00)
moon     ssh:notty    10.0.0.216       Sun Nov 23 13:33 - 13:33  (00:00)
moon     ssh:notty    10.0.0.216       Sun Nov 23 13:33 - 13:33  (00:00)

btmp begins Sun Nov 23 13:33:04 2025

Server Performance Report: 2025-11-23
[root@localhost ~]#
```

## Try It Out
```shell
# Clone the repository
git clone https://github.com/Pashashaukat/server-performance-stats.git
cd server-performance-stats

# Convert line endings if cloned/edited on Windows
dos2unix server-stats.sh

# Make the script executable
chmod +x server-stats.sh

# Run the script
./server-stats.sh
```

## Future Enhancements

Planned improvements include:

- Export reports to plain text and CSV for easier archival and analysis.
- Add log rotation so reports don’t grow indefinitely and old data is archived.
- Implement configurable thresholds for CPU, memory, and disk usage to highlight issues.
- Add scheduling support via cron/systemd to run automatically and generate daily reports.
- Include network statistics (bandwidth usage, active connections, firewall status).
- Enhance security reporting with failed login summaries and suspicious process detection.
- Provide configuration options to enable/disable specific modules depending on use case.
- Improve portability by validating compatibility across major Linux distributions.

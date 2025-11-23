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
root@localhost ~]# ./server-stats.sh
Total CPU usage

02:36:05 PM  CPU    %usr   %nice    %sys %iowait    %irq   %soft  %steal  %guest  %gnice   %idle
02:36:06 PM  all    0.00    0.00    0.00    0.00    0.50    0.50    0.00    0.00    0.00   99.00

Total memory usage
               total        used        free      shared  buff/cache   available
Mem:           1.7Gi       798Mi       496Mi       7.0Mi       611Mi       940Mi
Swap:          2.0Gi       581Mi       1.4Gi
Total:         3.7Gi       1.3Gi       1.9Gi

Total disk usage
Filesystem           Size  Used Avail Use% Mounted on
devtmpfs             4.0M     0  4.0M   0% /dev
tmpfs                870M     0  870M   0% /dev/shm
tmpfs                348M   11M  338M   3% /run
/dev/mapper/rl-root   17G  6.9G   11G  41% /
/dev/nvme0n1p1       960M  467M  494M  49% /boot
tmpfs                174M  104K  174M   1% /run/user/1000
/dev/sr0              11G   11G     0 100% /run/media/moon/Rocky-9-5-x86_64-dvd

Top 5 processes by CPU usage
USER     COMMAND             PID %CPU
root     vmtoolsd            805  0.2
moon     vmtoolsd           5889  0.2
root     rcu_preempt          17  0.1
root     NetworkManager      954  0.1
root     nm-dispatcher       973  0.1

Top 5 processes by memory usage
USER     COMMAND             PID %MEM
moon     gnome-shell        5626  4.8
moon     gnome-software     5879  2.2
moon     gnome-terminal-    6249  0.7
moon     gjs                5957  0.7
root     fwupd              6260  0.7

Server uptime, load average & logged in users
 14:36:06 up  1:54,  3 users,  load average: 0.01, 0.05, 0.07
USER     TTY        LOGIN@   IDLE   JCPU   PCPU WHAT
moon     seat0     12:42    0.00s  0.00s  0.01s /usr/libexec/gdm-wayland-session --register-session gnome-session
moon     tty2      12:42    1:54m  0.09s  0.08s /usr/libexec/gnome-session-binary
moon     pts/1     12:43    6.00s  1.26s  0.04s sshd: moon [priv]

OS version and information
NAME="Rocky Linux"
VERSION="9.6 (Blue Onyx)"

Failed login attempts
moon     ssh:notty    10.0.0.216       Sun Nov 23 14:05 - 14:05  (00:00)
moon     ssh:notty    10.0.0.216       Sun Nov 23 13:33 - 13:33  (00:00)
moon     ssh:notty    10.0.0.216       Sun Nov 23 13:33 - 13:33  (00:00)
moon     ssh:notty    10.0.0.216       Sun Nov 23 13:33 - 13:33  (00:00)

btmp begins Sun Nov 23 13:33:04 2025

Server Performance Report: 2025-11-23

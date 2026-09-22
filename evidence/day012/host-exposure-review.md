# 🌐 Day012 Host Exposure Review

## Timestamp UTC
2026-09-22T01:55:41Z

## Listening TCP and UDP
Netid State  Recv-Q Send-Q      Local Address:Port  Peer Address:PortProcess
udp   UNCONN 0      0              127.0.0.54:53         0.0.0.0:*
udp   UNCONN 0      0           127.0.0.53%lo:53         0.0.0.0:*
udp   UNCONN 0      0      172.31.40.230%ens5:68         0.0.0.0:*
udp   UNCONN 0      0               127.0.0.1:323        0.0.0.0:*
udp   UNCONN 0      0                   [::1]:323           [::]:*
tcp   LISTEN 0      151             127.0.0.1:3306       0.0.0.0:*
tcp   LISTEN 0      4096        127.0.0.53%lo:53         0.0.0.0:*
tcp   LISTEN 0      128             127.0.0.1:40669      0.0.0.0:*    users:(("code-7debcd0e2a",pid=1312,fd=9))
tcp   LISTEN 0      128             127.0.0.1:36789      0.0.0.0:*    users:(("code-7debcd0e2a",pid=1366,fd=11))
tcp   LISTEN 0      70              127.0.0.1:33060      0.0.0.0:*
tcp   LISTEN 0      4096           127.0.0.54:53         0.0.0.0:*
tcp   LISTEN 0      511             127.0.0.1:45687      0.0.0.0:*    users:(("MainThread",pid=1484,fd=31))
tcp   LISTEN 0      4096              0.0.0.0:22         0.0.0.0:*
tcp   LISTEN 0      4096                 [::]:22            [::]:*

## Firewall State
ufw unavailable or permission restricted

## AppArmor
active
apparmor module is loaded.

## Kernel Controls
kernel.randomize_va_space = 2
fs.protected_symlinks = 1
fs.protected_hardlinks = 1
net.ipv4.conf.all.rp_filter = 2

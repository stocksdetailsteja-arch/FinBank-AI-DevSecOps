# 📈 Day 004 Process and Monitoring Baseline

## Timestamp UTC
2026-09-18T02:57:25Z

## Host
Linux 7.0.0-1012-aws x86_64 GNU/Linux
2
 02:57:25 up  1:43,  2 users,  load average: 0.03, 0.15, 0.09

## PID 1
    PID    PPID USER     STAT COMMAND         COMMAND
      1       0 root     Ss   systemd         /sbin/init

## Memory
               total        used        free      shared  buff/cache   available
Mem:           3.7Gi       1.7Gi       957Mi       2.7Mi       1.4Gi       2.1Gi
Swap:             0B          0B          0B

## Load
0.03 0.15 0.09 1/293 11614

## Top Processes
    PID    PPID USER     STAT  NI %CPU %MEM     ELAPSED COMMAND
    831       1 mysql    Ssl    0  0.7 13.4    01:43:28 mysqld
   1404    1364 ubuntu   Sl     0  0.2 10.2    01:42:24 MainThread
   1449    1364 ubuntu   Sl     0  0.2  2.1    01:42:22 MainThread
   1364    1360 ubuntu   Sl     0  0.2  3.3    01:42:27 MainThread
   1350    1295 ubuntu   Ssl    0  0.1  0.5    01:42:36 code-645f29cc31
   1295    1277 ubuntu   Sl     0  0.1  0.5    01:42:38 code-645f29cc31
   1276    1124 ubuntu   S      0  0.0  0.2    01:42:38 sshd-session
   1482    1426 ubuntu   Sl     0  0.0  3.5    01:42:21 MainThread
   1517    1482 ubuntu   Sl     0  0.0  7.0    01:42:18 MainThread
    682       1 root     Ssl    0  0.0  1.0    01:43:29 snapd
   1174       1 root     Ssl    0  0.0  1.1    01:42:39 fwupd
   1426    1416 ubuntu   Sl     0  0.0  2.3    01:42:23 MainThread
      1       0 root     Ss     0  0.0  0.3    01:43:36 systemd
   7546       2 root     I      0  0.0  0.0       37:19 kworker/0:0-events
   7758       2 root     I      0  0.0  0.0       27:19 kworker/1:1-events
   1417    1364 ubuntu   Sl     0  0.0  1.4    01:42:23 MainThread
   1595    1449 ubuntu   Ss     0  0.0  0.1    01:41:50 bash
   1077       1 root     Ssl    0  0.0  0.5    01:43:24 amazon-ssm-agen
     70       2 root     I      0  0.0  0.0    01:43:35 kworker/u8:3-flush-259:0

## System State
running

## Failed Units
  UNIT LOAD ACTIVE SUB DESCRIPTION

0 loaded units listed.

## Listening Sockets
Netid State  Recv-Q Send-Q      Local Address:Port  Peer Address:PortProcess
udp   UNCONN 0      0              127.0.0.54:53         0.0.0.0:*
udp   UNCONN 0      0           127.0.0.53%lo:53         0.0.0.0:*
udp   UNCONN 0      0      172.31.40.230%ens5:68         0.0.0.0:*
udp   UNCONN 0      0               127.0.0.1:323        0.0.0.0:*
udp   UNCONN 0      0                   [::1]:323           [::]:*
tcp   LISTEN 0      4096        127.0.0.53%lo:53         0.0.0.0:*
tcp   LISTEN 0      4096           127.0.0.54:53         0.0.0.0:*
tcp   LISTEN 0      128             127.0.0.1:39125      0.0.0.0:*    users:(("code-645f29cc31",pid=1295,fd=9))
tcp   LISTEN 0      70              127.0.0.1:33060      0.0.0.0:*
tcp   LISTEN 0      511             127.0.0.1:36465      0.0.0.0:*    users:(("MainThread",pid=1482,fd=31))
tcp   LISTEN 0      128             127.0.0.1:42967      0.0.0.0:*    users:(("code-645f29cc31",pid=1350,fd=11))
tcp   LISTEN 0      151             127.0.0.1:3306       0.0.0.0:*
tcp   LISTEN 0      4096              0.0.0.0:22         0.0.0.0:*
tcp   LISTEN 0      4096                 [::]:22            [::]:*

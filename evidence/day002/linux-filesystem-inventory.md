# 🐧 Day 002 Linux Filesystem Inventory

## Timestamp UTC
2026-09-16T03:08:08Z

## Operating System
NAME="Ubuntu"
VERSION_ID="26.04"
VERSION="26.04 LTS (Resolute Raccoon)"

## Kernel
Linux 7.0.0-1012-aws x86_64 GNU/Linux

## PID 1
    PID COMMAND         COMMAND
      1 systemd         /sbin/init

## Default Target
graphical.target

## Key Directories
drwxr-xr-x  19 root root 4096 Sep 16 00:58 /
drwxr-xr-x   5 root root 4096 Sep  9 01:49 /boot
drwxr-xr-x  16 root root 3420 Sep 16 00:58 /dev
drwxr-xr-x 117 root root 4096 Sep 15 01:52 /etc
drwxr-xr-x   3 root root 4096 Aug 25 14:05 /home
drwxr-xr-x   2 root root 4096 Jun  4 05:29 /opt
dr-xr-xr-x 193 root root    0 Sep 16 00:58 /proc
drwxr-xr-x  33 root root  960 Sep 16 01:36 /run
drwxr-xr-x   2 root root 4096 Jun  4 05:29 /srv
dr-xr-xr-x  13 root root    0 Sep 16 02:40 /sys
drwxrwxrwt  16 root root  400 Sep 16 02:37 /tmp
drwxr-xr-x  12 root root 4096 Jun  4 05:29 /usr
drwxr-xr-x  13 root root 4096 Aug 25 14:05 /var

## Filesystems
Filesystem      Type      Size  Used Avail Use% Mounted on
/dev/root       ext4       19G  8.1G   11G  45% /
tmpfs           tmpfs     1.9G     0  1.9G   0% /dev/shm
tmpfs           tmpfs     767M  904K  766M   1% /run
efivarfs        efivarfs  128K  3.3K  120K   3% /sys/firmware/efi/efivars
tmpfs           tmpfs     1.9G   76K  1.9G   1% /tmp
none            tmpfs     1.0M     0  1.0M   0% /run/credentials/systemd-journald.service
none            tmpfs     1.0M     0  1.0M   0% /run/credentials/systemd-resolved.service
/dev/nvme0n1p13 ext4      989M  163M  760M  18% /boot
/dev/nvme0n1p15 vfat      105M  6.3M   99M   7% /boot/efi
none            tmpfs     1.0M     0  1.0M   0% /run/credentials/systemd-networkd.service
none            tmpfs     1.0M     0  1.0M   0% /run/credentials/getty@tty1.service
none            tmpfs     1.0M     0  1.0M   0% /run/credentials/serial-getty@ttyS0.service
tmpfs           tmpfs     384M  8.0K  384M   1% /run/user/1000

## Inodes
Filesystem      Inodes IUsed IFree IUse% Mounted on
/dev/root         2.3M  187K  2.1M    8% /
tmpfs             479K     2  479K    1% /dev/shm
tmpfs             800K   759  800K    1% /run
efivarfs             0     0     0     - /sys/firmware/efi/efivars
tmpfs             1.0M    55  1.0M    1% /tmp
none              1.0K     1  1023    1% /run/credentials/systemd-journald.service
none              1.0K     1  1023    1% /run/credentials/systemd-resolved.service
/dev/nvme0n1p13    64K   651   64K    1% /boot
/dev/nvme0n1p15      0     0     0     - /boot/efi
none              1.0K     1  1023    1% /run/credentials/systemd-networkd.service
none              1.0K     1  1023    1% /run/credentials/getty@tty1.service
none              1.0K     1  1023    1% /run/credentials/serial-getty@ttyS0.service
tmpfs              96K    38   96K    1% /run/user/1000

## Mount for Repository
TARGET SOURCE         FSTYPE OPTIONS
/      /dev/nvme0n1p1 ext4   rw,relatime,discard,errors=remount-ro,commit=30

## Block Devices
NAME         FSTYPE   FSVER LABEL           UUID                                 FSAVAIL FSUSE% MOUNTPOINTS
loop0        squashfs 4.0                                                              0   100% /snap/amazon-ssm-agent/13349
loop1        squashfs 4.0                                                              0   100% /snap/amazon-ssm-agent/13009
loop2        squashfs 4.0                                                              0   100% /snap/core22/2411
loop3        squashfs 4.0                                                              0   100% /snap/core22/2955
loop4        squashfs 4.0                                                              0   100% /snap/snapd/27738
loop5        squashfs 4.0                                                              0   100% /snap/snapd/26865
nvme0n1                                                                                         
├─nvme0n1p1  ext4     1.0   cloudimg-rootfs 553eb6f0-df3b-48cf-b8d3-48b8d7fe5b76   10.2G    44% /
├─nvme0n1p13 ext4     1.0   BOOT            005a5132-2768-402e-b8f5-1e31db26b1b6  759.2M    16% /boot
├─nvme0n1p14                                                                                    
└─nvme0n1p15 vfat     FAT32 UEFI            032C-9E93                              98.1M     6% /boot/efi

## Lab Paths
-rw------- ubuntu:ubuntu labs/day002/restricted/demo.txt
-rw-r--r-- ubuntu:ubuntu labs/day002/README.md
-rw-rw-r-- ubuntu:ubuntu labs/day002/config/app.conf
-rw-rw-r-- ubuntu:ubuntu labs/day002/data/synthetic-transactions.csv
-rw-rw-r-- ubuntu:ubuntu labs/day002/links/transactions.hard
drwxrwxr-x ubuntu:ubuntu labs/day002
drwxrwxr-x ubuntu:ubuntu labs/day002/config
drwxrwxr-x ubuntu:ubuntu labs/day002/data
drwxrwxr-x ubuntu:ubuntu labs/day002/links
drwxrwxr-x ubuntu:ubuntu labs/day002/logs
drwxrwxr-x ubuntu:ubuntu labs/day002/restricted
drwxrwxr-x ubuntu:ubuntu labs/day002/tmp
lrwxrwxrwx ubuntu:ubuntu labs/day002/links/transactions.symbolic

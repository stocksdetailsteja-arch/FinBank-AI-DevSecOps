# 💽 Day015 Storage Inventory

## Timestamp UTC
2026-09-22T04:03:42Z

## Block Devices
NAME         TYPE  SIZE FSTYPE FSVER LABEL           UUID                                 MOUNTPOINTS
nvme0n1      disk   20G
├─nvme0n1p1  part 18.9G ext4   1.0   cloudimg-rootfs 553eb6f0-df3b-48cf-b8d3-48b8d7fe5b76 /
├─nvme0n1p13 part 1023M ext4   1.0   BOOT            005a5132-2768-402e-b8f5-1e31db26b1b6 /boot
├─nvme0n1p14 part    4M
└─nvme0n1p15 part  106M vfat   FAT32 UEFI            032C-9E93                            /boot/efi

## Mounts
TARGET                                          SOURCE          FSTYPE      OPTIONS
/                                               /dev/nvme0n1p1  ext4        rw,relatime,discard,errors=remount-ro,commit=30
├─/dev                                          devtmpfs        devtmpfs    rw,nosuid,noexec,relatime,size=1571644k,nr_inodes=392911,mode=755,inode64
│ ├─/dev/shm                                    tmpfs           tmpfs       rw,nosuid,nodev,inode64,usrquota
│ ├─/dev/pts                                    devpts          devpts      rw,nosuid,noexec,relatime,gid=5,mode=600,ptmxmode=000
│ ├─/dev/mqueue                                 mqueue          mqueue      rw,nosuid,nodev,noexec,relatime
│ └─/dev/hugepages                              hugetlbfs       hugetlbfs   rw,nosuid,nodev,relatime,pagesize=2M
├─/proc                                         proc            proc        rw,nosuid,nodev,noexec,relatime
│ └─/proc/sys/fs/binfmt_misc                    systemd-1       autofs      rw,relatime,fd=36,pgrp=1,timeout=0,minproto=5,maxproto=5,direct,pipe_ino=662
│   └─/proc/sys/fs/binfmt_misc                  binfmt_misc     binfmt_misc rw,nosuid,nodev,noexec,relatime
├─/sys                                          sysfs           sysfs       rw,nosuid,nodev,noexec,relatime
│ ├─/sys/kernel/security                        securityfs      securityfs  rw,nosuid,nodev,noexec,relatime
│ ├─/sys/fs/cgroup                              cgroup2         cgroup2     rw,nosuid,nodev,noexec,relatime,nsdelegate,memory_recursiveprot,memory_hugetlb_accounting
│ ├─/sys/fs/pstore                              none            pstore      rw,nosuid,nodev,noexec,relatime
│ ├─/sys/firmware/efi/efivars                   efivarfs        efivarfs    rw,nosuid,nodev,noexec,relatime
│ ├─/sys/fs/bpf                                 bpf             bpf         rw,nosuid,nodev,noexec,relatime,mode=700
│ ├─/sys/kernel/debug                           debugfs         debugfs     rw,nosuid,nodev,noexec,relatime
│ ├─/sys/kernel/tracing                         tracefs         tracefs     rw,nosuid,nodev,noexec,relatime
│ ├─/sys/kernel/config                          configfs        configfs    rw,nosuid,nodev,noexec,relatime
│ └─/sys/fs/fuse/connections                    fusectl         fusectl     rw,nosuid,nodev,noexec,relatime
├─/run                                          tmpfs           tmpfs       rw,nosuid,nodev,size=784672k,nr_inodes=819200,mode=755,inode64
│ ├─/run/credentials/systemd-journald.service   none            tmpfs       ro,nosuid,nodev,noexec,relatime,nosymfollow,size=1024k,nr_inodes=1024,mode=700,inode64,noswap
│ ├─/run/credentials/systemd-resolved.service   none            tmpfs       ro,nosuid,nodev,noexec,relatime,nosymfollow,size=1024k,nr_inodes=1024,mode=700,inode64,noswap
│ ├─/run/credentials/systemd-networkd.service   none            tmpfs       ro,nosuid,nodev,noexec,relatime,nosymfollow,size=1024k,nr_inodes=1024,mode=700,inode64,noswap
│ ├─/run/user/1000                              tmpfs           tmpfs       rw,nosuid,nodev,relatime,size=392336k,nr_inodes=98084,mode=700,uid=1000,gid=1000,inode64
│ ├─/run/credentials/getty@tty1.service         none            tmpfs       ro,nosuid,nodev,noexec,relatime,nosymfollow,size=1024k,nr_inodes=1024,mode=700,inode64,noswap
│ └─/run/credentials/serial-getty@ttyS0.service none            tmpfs       ro,nosuid,nodev,noexec,relatime,nosymfollow,size=1024k,nr_inodes=1024,mode=700,inode64,noswap
├─/tmp                                          tmpfs           tmpfs       rw,nosuid,nodev,nr_inodes=1048576,inode64,usrquota
├─/snap/amazon-ssm-agent/13009                  /dev/loop0      squashfs    ro,nodev,relatime,errors=continue,threads=single
├─/snap/amazon-ssm-agent/13349                  /dev/loop1      squashfs    ro,nodev,relatime,errors=continue,threads=single
├─/snap/core22/2955                             /dev/loop2      squashfs    ro,nodev,relatime,errors=continue,threads=single
├─/snap/core22/2411                             /dev/loop3      squashfs    ro,nodev,relatime,errors=continue,threads=single
├─/snap/snapd/26865                             /dev/loop4      squashfs    ro,nodev,relatime,errors=continue,threads=single
├─/snap/snapd/27738                             /dev/loop5      squashfs    ro,nodev,relatime,errors=continue,threads=single
└─/boot                                         /dev/nvme0n1p13 ext4        rw,relatime
  └─/boot/efi                                   /dev/nvme0n1p15 vfat        rw,relatime,fmask=0077,dmask=0077,codepage=437,iocharset=iso8859-1,shortname=mixed,errors=remount-ro

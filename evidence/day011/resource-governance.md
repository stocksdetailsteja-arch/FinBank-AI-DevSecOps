# 📏 Day011 Resource Governance

## Timestamp UTC
2026-09-22T01:33:45Z

## Shell Limits
real-time non-blocking time  (microseconds, -R) unlimited
core file size              (blocks, -c) 0
data seg size               (kbytes, -d) unlimited
scheduling priority                 (-e) 0
file size                   (blocks, -f) unlimited
pending signals                     (-i) 12455
max locked memory           (kbytes, -l) 8192
max memory size             (kbytes, -m) unlimited
open files                          (-n) 524288
pipe size                (512 bytes, -p) 8
POSIX message queues         (bytes, -q) 819200
real-time priority                  (-r) 0
stack size                  (kbytes, -s) 8192
cpu time                   (seconds, -t) unlimited
max user processes                  (-u) 12455
virtual memory              (kbytes, -v) unlimited
file locks                          (-x) unlimited

## Process Limits
Limit                     Soft Limit           Hard Limit           Units
Max cpu time              unlimited            unlimited            seconds
Max file size             unlimited            unlimited            bytes
Max data size             unlimited            unlimited            bytes
Max stack size            8388608              unlimited            bytes
Max core file size        0                    unlimited            bytes
Max resident set          unlimited            unlimited            bytes
Max processes             12455                12455                processes
Max open files            524288               524288               files
Max locked memory         8388608              8388608              bytes
Max address space         unlimited            unlimited            bytes
Max file locks            unlimited            unlimited            locks
Max pending signals       12455                12455                signals
Max msgqueue size         819200               819200               bytes
Max nice priority         0                    0
Max realtime priority     0                    0
Max realtime timeout      unlimited            unlimited            us

## Filesystem Capacity
Filesystem      Type      Size  Used Avail Use% Mounted on
/dev/root       ext4       19G  8.1G   11G  45% /
tmpfs           tmpfs     1.9G     0  1.9G   0% /dev/shm
tmpfs           tmpfs     767M  904K  766M   1% /run
efivarfs        efivarfs  128K  3.3K  120K   3% /sys/firmware/efi/efivars
tmpfs           tmpfs     1.9G     0  1.9G   0% /tmp
none            tmpfs     1.0M     0  1.0M   0% /run/credentials/systemd-journald.service
none            tmpfs     1.0M     0  1.0M   0% /run/credentials/systemd-resolved.service
/dev/nvme0n1p13 ext4      989M  163M  760M  18% /boot
/dev/nvme0n1p15 vfat      105M  6.3M   99M   7% /boot/efi
none            tmpfs     1.0M     0  1.0M   0% /run/credentials/systemd-networkd.service
none            tmpfs     1.0M     0  1.0M   0% /run/credentials/getty@tty1.service
none            tmpfs     1.0M     0  1.0M   0% /run/credentials/serial-getty@ttyS0.service
tmpfs           tmpfs     384M  8.0K  384M   1% /run/user/1000

## Inode Capacity
Filesystem      Type     Inodes IUsed IFree IUse% Mounted on
/dev/root       ext4       2.3M  188K  2.1M    9% /
tmpfs           tmpfs      479K     2  479K    1% /dev/shm
tmpfs           tmpfs      800K   758  800K    1% /run
efivarfs        efivarfs      0     0     0     - /sys/firmware/efi/efivars
tmpfs           tmpfs      1.0M    28  1.0M    1% /tmp
none            tmpfs      1.0K     1  1023    1% /run/credentials/systemd-journald.service
none            tmpfs      1.0K     1  1023    1% /run/credentials/systemd-resolved.service
/dev/nvme0n1p13 ext4        64K   651   64K    1% /boot
/dev/nvme0n1p15 vfat          0     0     0     - /boot/efi
none            tmpfs      1.0K     1  1023    1% /run/credentials/systemd-networkd.service
none            tmpfs      1.0K     1  1023    1% /run/credentials/getty@tty1.service
none            tmpfs      1.0K     1  1023    1% /run/credentials/serial-getty@ttyS0.service
tmpfs           tmpfs       96K    39   96K    1% /run/user/1000

## Mount Summary
TARGET                                          SOURCE          FSTYPE      OPTIONS
/                                               /dev/nvme0n1p1  ext4        rw,relatime,discard,errors=remount-ro,commit=30
├─/dev                                          devtmpfs        devtmpfs    rw,nosuid,noexec,relatime,size=1571648k,nr_inodes=392912,mode=755,inode64
│ ├─/dev/shm                                    tmpfs           tmpfs       rw,nosuid,nodev,inode64,usrquota
│ ├─/dev/pts                                    devpts          devpts      rw,nosuid,noexec,relatime,gid=5,mode=600,ptmxmode=000
│ ├─/dev/hugepages                              hugetlbfs       hugetlbfs   rw,nosuid,nodev,relatime,pagesize=2M
│ └─/dev/mqueue                                 mqueue          mqueue      rw,nosuid,nodev,noexec,relatime
├─/proc                                         proc            proc        rw,nosuid,nodev,noexec,relatime
│ └─/proc/sys/fs/binfmt_misc                    systemd-1       autofs      rw,relatime,fd=36,pgrp=1,timeout=0,minproto=5,maxproto=5,direct,pipe_ino=1287
│   └─/proc/sys/fs/binfmt_misc                  binfmt_misc     binfmt_misc rw,nosuid,nodev,noexec,relatime
├─/sys                                          sysfs           sysfs       rw,nosuid,nodev,noexec,relatime
│ ├─/sys/kernel/security                        securityfs      securityfs  rw,nosuid,nodev,noexec,relatime
│ ├─/sys/fs/cgroup                              cgroup2         cgroup2     rw,nosuid,nodev,noexec,relatime,nsdelegate,memory_recursiveprot,memory_hugetlb_accounting
│ ├─/sys/fs/pstore                              none            pstore      rw,nosuid,nodev,noexec,relatime
│ ├─/sys/firmware/efi/efivars                   efivarfs        efivarfs    rw,nosuid,nodev,noexec,relatime
│ ├─/sys/fs/bpf                                 bpf             bpf         rw,nosuid,nodev,noexec,relatime,mode=700
│ ├─/sys/kernel/tracing                         tracefs         tracefs     rw,nosuid,nodev,noexec,relatime
│ ├─/sys/kernel/debug                           debugfs         debugfs     rw,nosuid,nodev,noexec,relatime
│ ├─/sys/kernel/config                          configfs        configfs    rw,nosuid,nodev,noexec,relatime
│ └─/sys/fs/fuse/connections                    fusectl         fusectl     rw,nosuid,nodev,noexec,relatime
├─/run                                          tmpfs           tmpfs       rw,nosuid,nodev,size=784676k,nr_inodes=819200,mode=755,inode64
│ ├─/run/credentials/systemd-journald.service   none            tmpfs       ro,nosuid,nodev,noexec,relatime,nosymfollow,size=1024k,nr_inodes=1024,mode=700,inode64,noswap
│ ├─/run/credentials/systemd-resolved.service   none            tmpfs       ro,nosuid,nodev,noexec,relatime,nosymfollow,size=1024k,nr_inodes=1024,mode=700,inode64,noswap
│ ├─/run/credentials/systemd-networkd.service   none            tmpfs       ro,nosuid,nodev,noexec,relatime,nosymfollow,size=1024k,nr_inodes=1024,mode=700,inode64,noswap
│ ├─/run/user/1000                              tmpfs           tmpfs       rw,nosuid,nodev,relatime,size=392336k,nr_inodes=98084,mode=700,uid=1000,gid=1000,inode64
│ ├─/run/credentials/getty@tty1.service         none            tmpfs       ro,nosuid,nodev,noexec,relatime,nosymfollow,size=1024k,nr_inodes=1024,mode=700,inode64,noswap
│ └─/run/credentials/serial-getty@ttyS0.service none            tmpfs       ro,nosuid,nodev,noexec,relatime,nosymfollow,size=1024k,nr_inodes=1024,mode=700,inode64,noswap
├─/tmp                                          tmpfs           tmpfs       rw,nosuid,nodev,nr_inodes=1048576,inode64,usrquota
├─/snap/amazon-ssm-agent/13009                  /dev/loop0      squashfs    ro,nodev,relatime,errors=continue,threads=single
├─/snap/amazon-ssm-agent/13349                  /dev/loop1      squashfs    ro,nodev,relatime,errors=continue,threads=single

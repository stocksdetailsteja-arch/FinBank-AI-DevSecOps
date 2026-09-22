# 📊 Day015 Capacity and Inode Risk

## Timestamp UTC
2026-09-22T04:03:08Z

## Byte Capacity
Filesystem      Type      Size  Used Avail Use% Mounted on
/dev/root       ext4       19G  8.1G   11G  45% /
tmpfs           tmpfs     1.9G     0  1.9G   0% /dev/shm
tmpfs           tmpfs     767M  908K  766M   1% /run
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
tmpfs           tmpfs      800K   762  800K    1% /run
efivarfs        efivarfs      0     0     0     - /sys/firmware/efi/efivars
tmpfs           tmpfs      1.0M    30  1.0M    1% /tmp
none            tmpfs      1.0K     1  1023    1% /run/credentials/systemd-journald.service
none            tmpfs      1.0K     1  1023    1% /run/credentials/systemd-resolved.service
/dev/nvme0n1p13 ext4        64K   651   64K    1% /boot
/dev/nvme0n1p15 vfat          0     0     0     - /boot/efi
none            tmpfs      1.0K     1  1023    1% /run/credentials/systemd-networkd.service
none            tmpfs      1.0K     1  1023    1% /run/credentials/getty@tty1.service
none            tmpfs      1.0K     1  1023    1% /run/credentials/serial-getty@ttyS0.service
tmpfs           tmpfs       96K    38   96K    1% /run/user/1000

## Threshold Findings

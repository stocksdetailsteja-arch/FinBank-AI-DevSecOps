# 🔐 Day 003 Linux Identity and Permission Audit

## Timestamp UTC
2026-09-18T02:05:30Z

## Current Identity
ubuntu
uid=1000(ubuntu) gid=1000(ubuntu) groups=1000(ubuntu),4(adm),24(cdrom),27(sudo),30(dip),102(lxd)

## Safe Account Record
ubuntu:x:1000:1000:Ubuntu:/home/ubuntu:/bin/bash

## Primary Group Record
ubuntu:x:1000:

## Current Umask
0002

## Lab Modes
-rw------- 600 ubuntu:ubuntu labs/day003/private/denied.txt
-rw------- 600 ubuntu:ubuntu labs/day003/private/profile.txt
-rw-r----- 640 ubuntu:ubuntu labs/day003/umask-demo/new-file
-rw-r--r-- 644 ubuntu:ubuntu labs/day003/README.md
-rw-rw-r-- 664 ubuntu:ubuntu labs/day003/collaboration/reconciliation.txt
-rw-rw-r-- 664 ubuntu:ubuntu labs/day003/collaboration/settlement.txt
drwx------ 700 ubuntu:ubuntu labs/day003/private
drwxr-x--- 750 ubuntu:ubuntu labs/day003/umask-demo
drwxr-x--- 750 ubuntu:ubuntu labs/day003/umask-demo/new-directory
drwxrws--- 2770 ubuntu:ubuntu labs/day003/collaboration
drwxrwx--T 1770 ubuntu:ubuntu labs/day003/shared-drop
drwxrwxr-x 775 ubuntu:ubuntu labs/day003
drwxrwxr-x 775 ubuntu:ubuntu labs/day003/acl-demo

## Path Components
f: /home/ubuntu/Projects/FinBank-AI-DevSecOps/labs/day003/private/profile.txt
drwxr-xr-x root   root   /
drwxr-xr-x root   root   home
drwxr-x--- ubuntu ubuntu ubuntu
drwxrwxr-x ubuntu ubuntu Projects
drwxrwxr-x ubuntu ubuntu FinBank-AI-DevSecOps
drwxrwxr-x ubuntu ubuntu labs
drwxrwxr-x ubuntu ubuntu day003
drwx------ ubuntu ubuntu private
-rw------- ubuntu ubuntu profile.txt

## ACL Capability
getfacl unavailable
setfacl unavailable

## Temporary Directory Mode
drwxrwxrwt 1777 root:root /tmp

## SUID Inventory Sample
-rwsr-xr-x root:root /usr/bin/ntfs-3g
-rwsr-xr-x root:root /usr/bin/su
-rwsr-xr-x root:root /usr/bin/gpasswd
-rwsr-xr-x root:root /usr/bin/sudo.ws
-rwsr-xr-x root:root /usr/bin/newgrp
-rwsr-xr-x root:root /usr/bin/mount
-rwsr-xr-x root:root /usr/bin/chfn
-rwsr-xr-x root:root /usr/bin/fusermount3
-rwsr-xr-x root:root /usr/bin/passwd
-rwsr-xr-x root:root /usr/bin/chsh
-rwsr-xr-x root:root /usr/bin/umount

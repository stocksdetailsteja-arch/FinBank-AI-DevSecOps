# 🌐 Day 005 Network Baseline

## Timestamp UTC
2026-09-21T01:33:44Z

## Interfaces
lo               UNKNOWN        00:00:00:00:00:00 <LOOPBACK,UP,LOWER_UP>
ens5             UP             0e:24:ec:ca:c1:dd <BROADCAST,MULTICAST,UP,LOWER_UP>

## Address Families
lo               UNKNOWN        [REDACTED-IPv4] ::1/128
ens5             UP             [REDACTED-IPv4] metric 100 fe80::c24:ecff:feca:c1dd/64

## Routes
default via [REDACTED-IPv4] dev ens5 proto dhcp src [REDACTED-IPv4] metric 100
[REDACTED-IPv4] via [REDACTED-IPv4] dev ens5 proto dhcp src [REDACTED-IPv4] metric 100
[REDACTED-IPv4]/20 dev ens5 proto kernel scope link src [REDACTED-IPv4] metric 100
[REDACTED-IPv4] dev ens5 proto dhcp scope link src [REDACTED-IPv4] metric 100

## Local Resolution
::1             localhost

## NSS Hosts Order
hosts:          files dns

## Ephemeral Port Range
32768	60999

## Listening Port Summary
State  Recv-Q Send-Q Local Address:Port  Peer Address:Port
LISTEN 0      4096         0.0.0.0:22         0.0.0.0:*
LISTEN 0      4096            [::]:22            [::]:*

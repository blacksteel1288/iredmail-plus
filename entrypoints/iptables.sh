#!/bin/bash
#
# Load a set of blocked IP addresses into iptables
#
iptables -F
for x in $(cat /opt/iredmail/custom/iptables/blocked_ips.txt)
do
    iptables -A INPUT -s $x -j DROP
done
iptables -L -n -v
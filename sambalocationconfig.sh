#!/bin/sh
globalend=$(( $(grep -n '\[' /etc/smb.conf|head -2|tail -1|cut -d ':' -f 1) - 1 ))
echo $globalend
head -$globalend /etc/smb.conf > /etc/smb.conf.bak
mv /etc/smb.conf.bak /etc/smb.conf
cat /mnt/sda1/sambalocationconfig.conf >> /etc/smb.conf
#!/bin/sh
globalend=$(( $(grep -n '\[' /etc/smb.conf|head -2|tail -1|cut -d ':' -f 1) - 1 ))
#echo $globalend
sed -i "$globalend,\$d" /etc/smb.conf
cat /mnt/sda1/sambalocationconfig.conf >> /etc/smb.conf

#!/bin/bash

echo "welcome to the stats.sh file!"

echo "how much disk space has been used"
diskused=$( df -h | grep "dev/sda1" | awk '{print $5}' )
echo $diskused

echo "how much memory is free"
memfree=$( free -mh | grep Mem: | awk '{print $7}' )
echo $memfree

echo "how many connections there are to the current machine"
netstat | grep tcp

echo "who is logged in"
who

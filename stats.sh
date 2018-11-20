#!/bin/bash

echo "welcome to the stats.sh file!"

echo "how much disk space has been used"
du -h

echo "how much memory is free"
df -h

echo "how many connections there are to the current machine"
netstat | grep tcp

echo "who is logged in"
who

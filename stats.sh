#!/bin/bash

echo "welcome to the stats.sh file!"

echo "how much disk space has been used"
diskused=$( df -h | grep "dev/sda1" | awk '{print $5}' )
echo $diskused

echo "how much memory is free"
memfree=$( free -mh | grep Mem: | awk '{print $7}' )
echo $memfree

echo "how many connections there are to the current machine"
connections=$( netstat | grep tcp )
echo $connections

echo "who is logged in"
users=$( who )
echo $users

echo "This is a snapshot of your current system:


                    Disk Used: $diskused
                    Free Memory: $memfree
                    Logged in Users: $users
                    
Open Internet Connections:
$connections
"

echo "
color info:
https://www.maketecheasier.com/8-useful-and-interesting-bash-prompts/


"

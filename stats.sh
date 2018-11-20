#!/bin/bash

echo "welcome to the stats.sh file!"

diskused=$( df -h | grep "dev/sda1" | awk '{print $5}' )
memfree=$( free -mh | grep Mem: | awk '{print $7}' )
connections=$( netstat | grep tcp )
users=$( who )

echo -en "This is a snapshot of your current system:


            \e[91m  Disk Used: $diskused
            \e[92m  Free Memory: $memfree
            \e[94m  Logged in Users: $users

\e[32m                    
Open Internet Connections:
\e[34m
$connections\e[0m
"
echo -e "\e[42m
color info:
http://jafrog.com/2013/11/23/colors-in-terminal.html
https://misc.flogisoft.com/bash/tip_colors_and_formatting
http://wiki.bash-hackers.org/scripting/style
END END END END END END END END END END END END END END END END\e[0m
Before\e[0mDefault
"

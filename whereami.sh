#!/bin/bash

echo "Where am I?"
pwd

echo "Who am I?"
whoami

echo "What is my User ID?"
id -u $whoami

echo "What Superuser privileges do I have?"
sudo -l

echo "What processess am I running?"
echo "$whoami is running:"
ps -u $whoami


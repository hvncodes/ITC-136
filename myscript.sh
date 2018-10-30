#!/bin/bash

echo "hello ITC-136"

for a in $(ls); do
  echo "$a is a file"
done

echo "editted on github"

echo "This is your current working directory:"
pwd

echo "This is the version of linux you're running:"
uname -a

echo "These are your logged in users:"
who

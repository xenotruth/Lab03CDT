#!/bin/bash
if [ "$#" -ne 3 ]
then
echo "usage ./notify.sh PATH REMOTE-NAME REMOTE-IP"
exit


fi
echo "$2"
echo "$3"
	while [ true ]
	do 
	inotifywait -e modify,create,delete,move -r $1 && \
		sudo ssh $2@$3
		./tool.sh
		break
	done


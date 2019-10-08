#!/bin/bash
#make sure you have the right arguments
if [ "$#" -ne 3 ]
then
echo "usage ./notify.sh PATH REMOTE-NAME REMOTE-IP"
exit


fi
#watches a specified directory or file for any changes, if there is a change, run the script
	while [ true ]
	do 
	inotifywait -e modify,create,delete,move -r $1 && \
		sudo ssh $2@$3
		./tool.sh $1
		break
	done


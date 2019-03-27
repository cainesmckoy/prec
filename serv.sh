#!/bin/bash
serv() {
	chmod +x sys_scr 
	mkdir /etc/score
	cp sys_scr /etc/score/
	cp sys_scr.service /etc/systemd/system/
	systemctl enable sys_scr
	systemctl start sys_scr
	return 
}

serv

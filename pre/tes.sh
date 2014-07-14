#!/bin/bash

clear

#read -p "Enter your name " myname
#echo "itulah "  $myname  "hehehe"

#mysql -u root -p << eof
#show databases;
#eof

function ntp_exception  (){
	read -p "Network address : " network
	read -p "Network mask : " mask
	echo "restrict $network mask $mask nomodify notrap"
}

read -p " [*] Allow a network? [y]Yes or [n]No " allow
if [ $allow == 'y' ]
then
	ntp_exception
fi

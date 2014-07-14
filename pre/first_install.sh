#!/bin/bash

clear

echo " [*] Updating System ..."
apt-get update

echo " [*] Installing LAMPP ..."
apt-get -y install apache2 mysql-server php5 phpmyadmin

echo " [*] Installing Other package ..."
apt-get -y install git finger vim rar unrar zip unzip ssh synaptic php5-curl curl

echo " [*] Upgrading System ..."
apt-get -y upgrade

read -p "[*] Are you wanted to reboot? [y]Yes [n]No " confirm
echo $confirm
if [ $confirm == 'y' ]
then
	echo " [*] Preparing for reboot ..."
	sleep 3
	init 6
elif [ $confirm == 'n' ]
then
	echo " [*] Please reboot your system"
	sleep 3
fi

echo " [*] Preparation done :-)"

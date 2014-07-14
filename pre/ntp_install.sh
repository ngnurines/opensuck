#!/bin/bash

clear

echo " [*] Installing NTP ..."
sleep 3
apt-get -y install ntp

echo " [*] Configuring NTP service ..."
mv /etc/ntp.conf /etc/ntp.conf.ori
cp pre/ntp_configuration /etc/ntp.conf

echo " [*] Restarting NTP service ..."
/etc/init.d/ntp restart

echo " [*] Checking NTP service ..."
ntpq -p

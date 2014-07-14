#!/bin/bash

echo " [*] Installing Cinder components ..."
sleep 3
apt-get -y install cinder-api cinder-scheduler cinder-volume

echo " [*] Configuring Cinder libraries ..."
sleep 3
chown cinder:cinder -R /var/lib/cinder/

echo " [*] Done"

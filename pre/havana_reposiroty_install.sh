#!/bin/bash

clear

echo " [*] Configuring source to Havana ..."
sleep 3
apt-get -y install python-software-properties
add-apt-repository cloud-archive:havana
apt-get update

echo " [*] Reupgrading system ..."
sleep 3
apt-get -y upgrade
apt-get update

echo " [*] Installing RabbitMQ ..."
sleep 3
apt-get -y install rabbitmq-server memcached

#read -p "Please input guest password for RabbitMQ : " pass

echo " [*] Changing guest's password ..."
sleep 3
#rabbitmqctl change_password guest $pass
#unset pass

echo " [*] Done"

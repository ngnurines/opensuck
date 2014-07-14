#!/bin/bash

echo " [*] Installing Keystone ..."
sleep 3
apt-get -y install keystone python-mysqldb

echo " [*] Creating Database for Keystone ..."
#read -p " Enter Keystone's database password : " pass
#mysql -u root -p << eof
#create database keystone character set utf8;
#grant all privileges on keystone.* to keystone@'%' identified by '$pass';
#flush privileges;
#eof

#unset pass

#!/bin/bash

echo " [*] Show network interface list"
ifconfig

read -p " [*] Enter network label : " label

dns=8.8.4.4

read -p " [*] Enter network IPv4 ranged (e.g. 192.168.10.0/24) : " range

echo " [*] Please wait ..."
sleep 3
nova-manage network create --label $label --dns1 $dns --fixed_range_v4=$range
ifconfig br100

echo " [*] Creating flat network done"
sleep 3
nova-manage network list

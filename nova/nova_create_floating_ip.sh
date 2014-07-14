#!/bin/bash

function floating_ip() {
	nova-manage floating create --ip_range=$1
}

read -p " [*] Enter IP public range : " public
sleep 3

echo " [*] Configuring floating IP ..."
floating_ip $public

echo " [*] Done"
nova-manage floating list

#!/bin/bash

function cinder_service(){
	for service in api scheduler volume
	do
		service cinder-$service restart
	done
}

echo " [*] Synchronizing database ..."
sleep 3
cinder-manage db sync
#sed -i '1iinclude /var/lib/cinder/volumes/*' /etc/tgt/targets.conf

echo " [*] Restarting tgt service ..."
sleep 3
service tgt restart

echo " [*] Restarting Cinder service ..."
sleep 3
cinder_service

echo " [*] Done"

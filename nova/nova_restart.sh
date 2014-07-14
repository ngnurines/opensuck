#!/bin/bash

echo " [*] Synchronizing Nova database ..."
sleep 3
nova-manage db sync

echo " [*] Restarting Nova Compute Service ..."
sleep 3
for service in api conductor network scheduler objectstore cert consoleauth compute novncproxy
	do
	service nova-$service restart
done

nova-manage service list

echo " [*] Done"

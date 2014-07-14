#!/bin/bash

echo " [*] Synchronizing Glance database ..."
sleep 3
glance-manage db_sync

echo " [*] Restarting Glance Image Service ..."
sleep 3

for service in api registry
	do
	service glance-$service restart
done

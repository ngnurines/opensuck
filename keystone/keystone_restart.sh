#!/bin/bash

echo " [*] Synchronizing Keystone database ..."
sleep 3
keystone-manage db_sync

echo " [*] Restarting Keystone Identity Service ..."
sleep 3
service keystone restart

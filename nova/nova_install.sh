#!/bin/bash

echo " [*] Installing Nova ..."
sleep 3
apt-get -y install nova-api nova-cert nova-conductor nova-consoleauth nova-objectstore nova-scheduler nova-network nova-compute-kvm python-novaclient

echo " [*] Setting Nova libraries ..."
sleep 3
chown nova:nova -R /var/lib/nova/

echo " [*] Done"

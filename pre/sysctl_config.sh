#!/bin/bash

echo " [*] Enabling IPv4 Forwarding ..."
echo 'net.ipv4.ip_forward=1' >> /etc/sysctl.conf
sysctl -p

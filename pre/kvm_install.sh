#!/bin/bash

clear

echo " [*] Installing KVM and others components ..."
sleep 3
apt-get -y install kvm qemu-kvm libvirt-bin virtinst bridge-utils

echo " [*] Enabling vhost_net ..."
#modprobe vhost_net

echo " [*] Checking module vhost_net ..."
#lsmod | grep vhost
#echo vhost_net >> /etc/modules

echo " [*] Configuring bridge network ..."
#mv /etc/network/interfaces /etc/network/interfaces.ori
#cp pre/network_iface /etc/network/interfaces
#ifdown eth0 && ifup br0 && ifup eth0

echo " [*] Showing network interface ..."
ifconfig


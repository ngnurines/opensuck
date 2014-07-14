#!/bin/bash

echo " [*] Creating image volder (/var/kvm/images/) ..."
sleep 3
mkdir -p /var/kvm/images

echo " [*] Downloading Ubuntu 12.04 cloud images ..."
sleep 3
wget http://cloud-images.ubuntu.com/releases/12.04/release/ubuntu-12.04-server-cloudimg-amd64-disk1.img -P /var/kvm/images/

echo " [*] Done"

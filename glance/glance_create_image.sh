#!/bin/bash

echo " [*] Showing Image form /var/kvm/images/"
ls /var/kvm/images

#read -p " [*] Enter Image Name : " name
glance image-create --name="Ubuntu 12.04 Cloud" --is-public=true --disk-format=qcow2 --container-format=bare < /var/kvm/images/ubuntu-12.04-server-cloudimg-amd64-disk1.img

echo " [*] Image List"
glance image-list

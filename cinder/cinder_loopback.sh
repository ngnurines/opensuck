#!/bin/bash

read -p " [*] Enter amount of loopback file (GB) : " loop
loop=$loop"G"

echo " [*] Creating loopback file ..."
sleep 3
dd if=/dev/zero of=/cinder-volumes bs=1 count=0 seek=$loop
ls -al / | grep cinder-volumes
echo " [*] Done"

echo " [*] Setting up /dev/loop2 ..."
sleep 3
losetup /dev/loop2 /cinder-volumes
echo " [*] Done"

echo " [*] Creating physical volume and volume group ..."
sleep 3
pvcreate /dev/loop2
vgcreate vg_volume01 /dev/loop2
vgdisplay
echo " [*] Done create volume group vg_volume01"

./cinder/cinder_restart.sh

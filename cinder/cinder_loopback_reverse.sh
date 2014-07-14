#!/bin/bash

echo " [*] Removing volume group vg_volume01 ..."
sleep 3
vgscan
vgremove vg_volume01
echo " [*] Done"

echo " [*] Removing physical volume /dev/loop2 ..."
sleep 3
pvscan
pvremove /dev/loop2
echo " [*] Done"

echo " [*] Processing to deatach /dev/loop2 ..."
sleep 3
losetup -a
losetup -d /dev/loop2
echo " [*] Done"

echo " [*] Deleting loopback file ..."
sleep 3
rm /cinder_volumes
echo " [*] Done"

./cinder/cinder_restart.sh

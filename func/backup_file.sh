#!/bin/bash

function copy() {
	cp $1 $1.ori
	sleep 3
	echo " [*] backup file $1 complete as $1.ori"
}

read -p "Backup file : " file
copy $file

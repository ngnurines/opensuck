#!/bin/bash

function create_role() {
	read -p " Enter role name : " name
	sleep 3
	echo " [*] processing ...";
	keystone role-create --name ${name}
}

echo " [*] Create Role";
work=1
while [ $work == 1 ]
do
	create_role
	keystone role-list
	
	read -p "Create another role ? (y/n)" confirm
	if [ $confirm == 'y' ]
	then
		work=1;
	elif [ $confirm == 'n' ]
	then
		echo "[*] Bye"
		exit 0;
	else
		exit 0;
	fi
done

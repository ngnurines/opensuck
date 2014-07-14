#!/bin/bash

function create_tenant() {
	read -p " Enter Tenant name : " name
	read -p " Enter Description : " des
	sleep 3
	echo " [*] processing ...";
	keystone tenant-create --name ${name} --description "${des}" --enabled true 
}

echo " [*] Create Tenant";
work=1
while [ $work == 1 ]
do
	create_tenant
	keystone tenant-list
	
	read -p "Create another Tenant ? (y/n)" confirm
	if [ $confirm == 'y' ]
	then
		work=1;
	elif [ $confirm == 'n' ]
	then
		echo " [*] Bye"
		exit 0;
	else
		exit 0;
	fi
done

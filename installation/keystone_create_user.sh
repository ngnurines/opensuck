#!/bin/bash

function create_user() {
	keystone role-list
	read -p " Enter User name : " name
	read -p " Enter Tenant name : " tenant
	read -p " Enter Role name : " role
	read -p " Enter Password : " pass
	read -p " Enter Email : " email
	
	sleep 3
	echo " [*] processing ...";
	keystone user-create --tenant ${tenant} --name ${name} --pass ${pass} --email ${email} --enabled true
	keystone user-role-add --user ${name} --tenant ${tenant} --role ${role}
}

echo " [*] Create User";
work=1
while [ $work == 1 ]
do
	create_user
	keystone user-list
	
	read -p "Create another User ? (y/n)" confirm
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

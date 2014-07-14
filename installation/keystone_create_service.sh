#!/bin/bash

function create_service() {
	read -p " Enter Service name : " name
	read -p " Enter Service type : " tipe
	read -p " Enter Service decription : " des
		
	sleep 3
	echo " [*] processing ...";
	keystone service-create --name=${name} --type=${tipe} --description="${des}" 
}

echo " [*] Create User";
work=1
while [ $work == 1 ]
do
	create_service
	keystone service-list
	
	read -p "Create another service ? (y/n)" confirm
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

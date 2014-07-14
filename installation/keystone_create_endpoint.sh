#!/bin/bash

function create_endpoint() {
	read -p "Enter region : " reg
		
	if [ $1 == "keystone" ]
	then
		keystone endpoint-create --region ${reg} \
		--service keystone \
		--publicurl "http://$2:\$(public_port)s/v2.0" \
		--internalurl "http://$2:\$(public_port)s/v2.0" \
		--adminurl "http://$2:\$(admin_port)s/v2.0"
	elif [ $1 == "nova" ]
	then
		keystone endpoint-create --region ${reg} \
		--service nova \
		--publicurl "http://$2:\$(compute_port)s/v1.1/\$(tenant_id)s" \
		--internalurl "http://$2:\$(compute_port)s/v1.1/\$(tenant_id)s" \
		--adminurl "http://$2:\$(compute_port)s/v1.1/\$(tenant_id)s"
	elif [ $1 == "glance" ]
	then
		keystone endpoint-create --region ${reg} \
		--service glance \
		--publicurl "http://$2:9292/v1" \
		--internalurl "http://$2:9292/v1" \
		--adminurl "http://$2:9292/v1" 
	elif [ $1 == "cinder" ]
	then
		keystone endpoint-create --region ${reg} \
		--service cinder \
		--publicurl "http://$2:8776/v1/\$(tenant_id)s" \
		--internalurl "http://$2:8776/v1/\$(tenant_id)s" \
		--adminurl "http://$2:8776/v1/\$(tenant_id)s" 
	fi
}

clear

echo " [*] Create Keystone Endpoint";
read -p " [*] Enter Host Address : " Host
work=1
while [ $work == 1 ]
do
	keystone service-list
	read -p " [*] Which service do you want to modify? " service
	create_endpoint $service $Host
	keystone endpoint-list
	
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

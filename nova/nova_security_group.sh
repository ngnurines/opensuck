#!/bin/bash

function secgroup() {
	nova secgroup-add-rule $1 $2 $3 $3 0.0.0.0/0
}

function secgroup_list() {
	nova secgroup-list-rules $1
}

read -p " [*] Enter rule : " rule
read -p " [*] Enter ip protocol : " protocol
read -p " [*] Enter port : " port

secgroup $rule $protocol $port
sleep 3
echo " [*] Done"
echo " [*] Show all rule in $rule"
secgroup_list $rule

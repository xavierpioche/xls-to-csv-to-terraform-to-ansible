#!/bin/bash 
terraform output -json vm_address > /tmp/a
COUNT=`jq '.[] | length' /tmp/a`
for I in $(seq 0 $(( ${COUNT} )) )
do
	MACHINE=`jq -c -r '.[0]."'${I}'".vm_name' /tmp/a | awk -F'[\"]' '{ print $2 }'`
	IP=`jq -c -r '.[0]."'${I}'".vm_address' /tmp/a | awk -F'[\"]' '{ print $2 }'`
	#IP=`jq -c -r '.[0]."'${I}'".vm_address|.[0]' /tmp/a | awk -F'[\"]' '{ print $2 }'`
	if [ "${IP}" != "" ]
	then
		echo "${MACHINE} ansible_host=${IP}"
	fi
	#echo "${IP}    ${MACHINE}"
done

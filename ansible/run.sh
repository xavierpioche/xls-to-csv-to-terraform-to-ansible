#!/bin/bash 
if [ $# -ne 1 ]
then
	echo "$0 <environment>"
	exit 1
fi

XENV=$1
myarray=("prod" "preprod" "itg")
if printf '%s\0' "${myarray[@]}" | grep -Fxqz -- ${XENV}
then

	if [ ! -f ${XENV}.inventory.yml ]
	then
		ln -s ../terraform/${XENV}/out.2 ${XENV}.inventory.yml
	fi

	for I in `ls ${XENV}.*.vars.json`
	do
		H=`echo $I | cut -d'.' -f2`
		echo "ansible-playbook -i ${XENV}.inventory.yml -e \"host=${H} diskConfigFile=${I}\" main.yml"
	done

	echo "ansible-playbook -i ${XENV}.inventory.yml -e \"host=all\" main_admuser.yml"

else
	echo "${XENV} is not an environment"
fi

#!/bin/bash 
if [ $# -ne 1 ]
then
	echo "$0 <environment>"
	exit 1
fi

XENV=$1
myarray=("prodgp" "preprod" "prodmq")
if printf '%s\0' "${myarray[@]}" | grep -Fxqz -- ${XENV}
then

	if [ ! -f ${XENV}.inventory.yml ]
	then
		ln -s ../terraform/${XENV}/out.2 ${XENV}.inventory.yml
	fi

	for I in `ls ${XENV}.*.vars.json`
	do
		H=`echo $I | cut -d'.' -f2`
		ansible-playbook -i ${XENV}.inventory.yml -e "host=${H} diskConfigFile=${I}" main_disk.yml
	done

	ansible-playbook -i ${XENV}.inventory.yml -e "host=all" main_admuser.yml

else
	echo "${XENV} is not an environment"
fi

#-- pour les load balancer
#ansible-playbook -i lb.preprod.inventory.yml  -e "vmsgroup=cbf-pm-lb var_template=lb.cbf-pm-lb.vars src_template=templates/haproxy-vip.conf.j2 dst_template=/etc/haproxy/test.conf" sys_template_file.yaml

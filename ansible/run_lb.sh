#!/bin/bash
if [ $# -ne 1 ]
then
	echo "$0 <env>"
	exit 1
fi
XENV=$1
#it = preprod
myarray=("pr" "mq" "it")
if printf '%s\0' "${myarray[@]}" | grep -Fxqz -- ${XENV}
then
	for I in pm int-prov sicap sicap-dc ns scapi sso ccapi bpapi saapi mrpm dov-m
	do
		#ansible-playbook -i lb.preprod.inventory.yml -e "vmsgroup=all proxy_url=192.168.106.229 proxy_port=8080" sys_rhel_subscribe.yaml
		ansible-playbook -i lb.preprod.inventory.yml -e "vmsgroup=cbf-${I}-lb package=haproxy" sys_install_package_ubuntu.yaml
		ansible-playbook -i lb.preprod.inventory.yml  -e "vmsgroup=cbf-${I}-lb env=${XENV} var_template=lb.cbf-${I}-lb.vars src_template=templates/haproxy-vip.conf.j2 dst_template=/etc/haproxy/haproxy.cfg" sys_template_file.yaml
	done
else
	echo "${XENV} is not an environment"
	echo "choose env = ${myarray[@]}"
fi

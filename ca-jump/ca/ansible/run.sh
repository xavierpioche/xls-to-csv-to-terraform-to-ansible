	#ansible-playbook -i lb.preprod.inventory.yml -e "vmsgroup=cbf-pm-lb openssl_name=it-cbf-pm-lb-1 openssl_ownca_dir=/home/cyan_adm/ca/certs" main.yaml

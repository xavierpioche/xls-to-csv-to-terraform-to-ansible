dns_server = "172.16.1.240"

vm_dns_list = "172.16.1.240, 172.17.1.240" 
vm_dns_search = "ms.fcm"

vms_prefix = ["it", "it", "it", "it", "it", "it", "it", "it", "it" , "it", "it"]
vms_site = [ "ms" , "ms", "ms" , "ms", "ms" , "ms", "ms" , "ms", "ms", "ms", "ms"  ]
vms_suffix = ["kafka-pxl-doc", "kafka-pxl-doc", "kafka-pxl-doc", "elasticsearch-pxl-doc", "elasticsearch-pxl-doc", "elasticsearch-pxl-doc", "kibana-pxl-doc", "pxl-companion", "pxl-companion", "pxl-document", "pxl-document" ]
vms_ids = ["1", "2" ]
#vms_ids = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11" ]
vms_name = ["1", "2", "3", "1", "2", "3", "1", "1", "2", "1", "2" ]

vms_cpu = [ "medium" , "medium", "medium", "medium", "medium" , "medium", "medium", "medium", "medium" , "medium", "medium"  ]
vms_memory = [ "medium" , "medium", "medium", "medium", "medium" , "medium", "medium", "medium", "medium" , "medium", "medium"  ]
vms_is_windows = [ false , false, false , false, false , false, false , false, false , false, false ]

#---- interface reseau principale #
vms_network_1 = [ "257", "257", "257", "257", "257", "257", "257", "257", "257", "257", "257" ]
vms_ip_ad_1 = [ "172.23.167.151", "172.23.167.152" , "172.23.167.153", "172.23.167.154", "172.23.167.155", "172.23.167.156" , "172.23.167.157", "172.23.167.158", "172.23.167.159", "172.23.167.160", "172.23.167.161" ]
vms_ip_mk_1 = [ "24" , "24" , "24" , "24" , "24" , "24" , "24" , "24" , "24" , "24" , "24" ]
vms_ip_gw = [ "172.23.167.200" , "172.23.167.200", "172.23.167.200", "172.23.167.200" , "172.23.167.200", "172.23.167.200", "172.23.167.200" , "172.23.167.200", "172.23.167.200", "172.23.167.200" , "172.23.167.200" ]
#--------------------------------#

vms_template = ["tpl-linux-rhel-8.7-base-202406132112", "tpl-linux-rhel-8.7-base-202406132112", "tpl-linux-rhel-8.7-base-202406132112", "tpl-linux-rhel-8.7-base-202406132112", "tpl-linux-rhel-8.7-base-202406132112", "tpl-linux-rhel-8.7-base-202406132112", "tpl-linux-rhel-8.7-base-202406132112", "tpl-linux-rhel-8.7-base-202406132112", "tpl-linux-rhel-8.7-base-202406132112", "tpl-linux-rhel-8.7-base-202406132112", "tpl-linux-rhel-8.7-base-202406132112" ]

vms_resource_pool = ["XITG", "XITG", "XITG", "XITG", "XITG", "XITG", "XITG", "XITG", "XITG", "XITG", "XITG"]

vms_datacenter = ["Datacenter","Datacenter", "Datacenter","Datacenter", "Datacenter","Datacenter", "Datacenter","Datacenter","Datacenter","Datacenter", "Datacenter"]

vms_datastore = [ "vsanDatastoreA" , "vsanDatastoreB", "vsanDatastoreA", "vsanDatastoreB", "vsanDatastoreA", "vsanDatastoreB", "vsanDatastoreA" , "vsanDatastoreA" , "vsanDatastoreB", "vsanDatastoreA" , "vsanDatastoreB" ]

vms_cluster = ["ClusterA","ClusterB", "ClusterA", "ClusterB", "ClusterA", "ClusterB", "ClusterA", "ClusterA","ClusterB","ClusterA", "ClusterB"]

vms_network_2 = [ "248", "248", "248", "248", "248", "248", "248", "248", "248", "248", "248" ]
vms_ip_ad_2 = [ "172.23.248.151", "172.23.248.152" , "172.23.248.153", "172.23.248.154", "172.23.248.155", "172.23.248.156" , "172.23.248.157", "172.23.248.158", "172.23.248.159", "172.23.248.160", "172.23.248.161" ]
vms_ip_mk_2 = [ "24" , "24" , "24" , "24" , "24" , "24" , "24" , "24" , "24" , "24" , "24" ]

vms_network_3 = [ "599", "599", "599", "599", "599", "599", "599", "599", "599", "599", "599" ]
vms_ip_ad_3 = [ "172.23.99.151", "172.23.99.152" , "172.23.99.153", "172.23.99.154", "172.23.99.155", "172.23.99.156" , "172.23.99.157", "172.23.99.158", "172.23.99.159", "172.23.99.160", "172.23.99.161" ]
vms_ip_mk_3 = [ "24" , "24" , "24" , "24" , "24" , "24" , "24" , "24" , "24" , "24" , "24" ]

vms_network_4 = [ "604", "604", "604", "604", "604", "604", "604", "604", "604", "604", "" ]
vms_ip_ad_4 = [ "172.23.60.151", "172.23.60.152" , "172.23.60.153", "172.23.60.154", "172.23.60.155", "172.23.60.156" , "172.23.60.157", "172.23.60.158", "172.23.60.159", "172.23.60.160", "" ]
vms_ip_mk_4 = [ "24" , "24" , "24" , "24" , "24" , "24" , "24" , "24" , "24" , "24" , "" ]

vms_folder = [ "XITG", "XITG", "XITG", "XITG", "XITG", "XITG", "XITG", "XITG", "XITG", "XITG", "XITG" ]

vms_datadsk = [ "small" , "medium", "medium", "medium", "medium" , "medium", "medium", "medium", "medium" , "medium", "medium"  ]

vms_envx = ["xitg","xitg","xitg","xitg","xitg","xitg","xitg","xitg","xitg","xitg","xitg"]

ansible_user = "ansible"
ansible_group = "cbf_preproduction"
ansible_key = "/home/ansible/.ssh/id_rsa"
csv_file_path = "preproduction.csv"

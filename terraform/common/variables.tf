variable "vsphere_endpoint" {}
variable "vsphere_username" {}
variable "vsphere_password" {}

variable "dns_server" {}

variable "vms_name" { 
    type = list 
}

variable "vms_ids" { 
    type = list 
}

variable "vms_ip_ad_1" {
    type = list 
}

variable "vms_ip_mk_1" {
    type = list 
}

variable "vms_ip_ad_2" {
    type = list 
}

variable "vms_ip_mk_2" {
    type = list 
}

variable "vms_ip_ad_3" {
    type = list 
}

variable "vms_ip_mk_3" {
    type = list 
}

variable "vms_ip_ad_4" {
    type = list 
}

variable "vms_ip_mk_4" {
    type = list 
}

variable "vms_ip_gw" {
    type = list 
}

variable "vms_template" {
    type = list
}

variable "vms_folder" {
    type = list 
}

variable "vms_resource_pool" {
    type = list
}

variable "vms_datastore" {
    type = list
}

variable "vms_datacenter" {
    type = list
}

variable "vms_cluster" {
    type = list
}

variable "vms_network_1" {
    type = list 
}

variable "vms_network_2" {
    type = list 
}

variable "vms_network_3" {
    type = list 
}

variable "vms_network_4" {
    type = list 
}


variable "vms_memory" {
    type = list
}

variable "vms_cpu" {
    type = list
}

variable "vms_suffix" {
    type = list 
}

variable "vms_prefix" {
    type = list 
}

variable "vms_site" {
   type = list 
}

variable "vms_is_windows" {
   type = list (bool)
}

variable "vm_dns_list" {}

variable "vm_dns_search" {}

variable "vms_datadsk" {
  type = list
}

variable "vms_envx" {
   type = list
}

variable "ansible_group" {}
variable "ansible_user" {}
variable "ansible_key" {}
variable "csv_file_path" {}

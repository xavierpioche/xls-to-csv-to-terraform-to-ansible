terraform {
  required_providers {
                 vsphere = {
                        source = "hashicorp/vsphere"
                 }

                 ansible = {
                     version = "~> 1.3.0"
                     source = "ansible/ansible"
                 }
        }

  backend "local" {}
}


provider "vsphere" {
  user           = var.vsphere_username
  password       = var.vsphere_password
  vsphere_server = var.vsphere_endpoint
 
  allow_unverified_ssl = true
}

provider "dns" {
  update {
        server = var.dns_server
 }
}


locals {
  vms_creation = {for s in var.vms_ids: index(var.vms_ids, s) => s}
  asset_csv = csvdecode(file("${var.csv_file_path}"))
}

module "vm" {
    #for_each = local.vms_creation 
    for_each = { for asset in local.asset_csv : asset.id => asset }
    source = "./vm"

    vs_datacenter = each.value.vm_datacenter
    vs_cluster = each.value.vm_cluster
    vs_datastore = each.value.vm_datastore

    vm_number = each.value.vm_number
    vm_prefix = each.value.environment
    vm_suffix = each.value.vm_number
    vm_cpu = each.value.vm_cpu
    vm_memory = each.value.vm_ram
    vm_name = each.value.vm_name
    vs_resourcepool = each.value.resource_pool
    vm_gateway = each.value.net1_gw
    vs_network_1 = each.value.net1_vlan_id
    vm_subnet_1 = each.value.net1_subnet
    vm_ipaddress_1 = each.value.full_ip_1
    vm_netmask_1 = each.value.net1_mask

    vs_network_2 = each.value.net2_vlan_id
    vm_subnet_2 = each.value.net2_subnet
    vm_ipaddress_2 = each.value.full_ip_2
    vm_netmask_2 = each.value.net2_mask

    vs_network_3 = each.value.net3_vlan_id
    vm_subnet_3 = each.value.net3_subnet
    vm_ipaddress_3 = each.value.full_ip_3
    vm_netmask_3 = each.value.net3_mask

    vs_network_4 = each.value.net4_vlan_id
    vm_subnet_4 = each.value.net4_subnet
    vm_ipaddress_4 = each.value.full_ip_4
    vm_netmask_4 = each.value.net4_mask

    vm_template = each.value.vm_template
    vm_folder = each.value.vm_folder
    vm_is_windows = each.value.is_windows
    vm_datadsk = each.value.vm_data_disk

    vm_dns_search = var.vm_dns_search
    vm_dns_list = var.vm_dns_list
}

output "vm_address" {
    value = module.vm[*] 
}

module "dns" {
    ##for_each = { for s in module.vm.*: index(module.vm.*, s) => s }
    #for_each = local.vms_creation 
    for_each = { for asset in local.asset_csv : asset.id => asset }
    source = "./dns"
    vm_name = each.value.vm_name
    #vm_name = values(module.vm)[*].vm_name[0]
    vm_prefix = each.value.environment
    vm_suffix = each.value.vm_number
    vm_address = each.value.full_ip_1
    #vm_address = values(module.vm)[*].vm_address[0]
    vm_envx = each.value.vm_folder
    #vm_envx = var.vms_envx["${each.key}"]
    ##vm_envx = var.vm_envx
    vm_dns_search = var.vm_dns_search
}

module "ansible" {
    #for_each = local.vms_creation
    for_each = { for asset in local.asset_csv : asset.id => asset }
    source = "./ansible"
    groupname = var.ansible_group
    vm_prefix = each.value.environment
    #vm_prefix = var.vms_prefix["${each.key}"]
    vm_suffix = each.value.vm_number
    #vm_suffix = var.vms_suffix["${each.key}"]
    secondgroup = each.value.vm_name
    #secondgroup = var.vms_suffix["${each.key}"]
    vm_name = each.value.vm_name
    #vm_name = var.vms_name["${each.key}"]
    vm_address = each.value.full_ip_1
    #vm_address = var.vms_ip_ad_1["${each.key}"]
    vm_envx = each.value.vm_folder
    #vm_envx = var.vms_envx["${each.key}"]
    ansible_user = var.ansible_user
    ansible_key = var.ansible_key
}


variable "vm_template" {}
variable "vs_datacenter" {}
variable "vs_cluster" {}

variable "vs_network_1" { default = "VM Network" }
variable "vs_network_2" { default = "VM Network" }
variable "vs_network_3" { default = "VM Network" }
variable "vs_network_4" { default = "VM Network" }

variable "vs_resourcepool" {}
variable "vm_suffix" {}
variable "vm_prefix" {}

variable "vm_name" {} 

variable "vm_folder" {}


variable "vs_datastore" {}

variable "vm_cpu" {}
variable "vm_memory" {}


variable "vm_gateway" {}
variable "vm_ipaddress_1" {}
variable "vm_netmask_1" {}
variable "vm_subnet_1" {}
variable "vm_ipaddress_2" {}
variable "vm_netmask_2" {}
variable "vm_subnet_2" {}
variable "vm_ipaddress_3" {}
variable "vm_netmask_3" {}
variable "vm_subnet_3" {}
variable "vm_ipaddress_4" {}
variable "vm_netmask_4" {}
variable "vm_subnet_4" {}

variable "vm_dns_list" {}
variable "vm_dns_search" {}

variable "vm_number" {}

variable "vm_is_windows" {
 type = bool
}

variable "vm_datadsk" {}


variable "vm_cpu_map" {
  type = map
  default = {
     "tiny" = "1"
     "small" = "1"
     "medium" = "2"
     "large" = "4"
     "huge" = "8"
  }
}

variable "vm_memory_map" {
  type = map
  default = {
    "tiny" = "1024"
    "small" = "2048"
    "medium" = "4096"
    "large" = "8192"
    "huge" = "16384"
  }
}

variable "vm_datadsk_map" {
  type = map
  default = {
    "tiny" = "5"
    "small" = "15"
    "medium" = "50"
    "large" = "100"
    "huge" = "500"
  }
}

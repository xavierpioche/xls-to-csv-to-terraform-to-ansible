terraform {
  required_providers {
                 ansible = {
                         version = "~> 1.3.0"
                          source = "ansible/ansible"
                 }
  }
}

resource "ansible_group" "le_groupe" {
  name="${var.groupname}"
}


resource "ansible_host" "ans_host" {
  name = "${var.vm_prefix}-${var.vm_suffix}-${var.vm_name}"
  groups = [ replace(ansible_group.le_groupe.name,"-","_") , replace(var.secondgroup,"-","_") ]
  variables = {
       ansible_host = var.vm_address
       ansible_user = "${var.ansible_user}"
       ansible_ssh_private_key_file = "${var.ansible_key}"
  }
}

#resource "ansible_host" "ans_host" {
#  #for_each = { for s in var.vm_name: index(var.vm_name, s) => s }
#  name = "${var.vm_prefix}-${var.vm_suffix}-${var.vm_name}"
#  #name = var.vm_name["${each.key}"]
#  groups = [ replace(ansible_group.le_groupe.name,"-","_") , replace(var.secondgroup["${each.key}"],"-","_") ]
#  #groups = [ replace(ansible_group.le_groupe.name,"-","_") , replace(var.secondgroup["${each.key}"],"-","_") ]
#  variables = {
#       ansible_host = var.vm_address["${each.key}"]
#       ansible_user = "${var.ansible_user}"
#       ansible_ssh_private_key_file = "${var.ansible_key}"
#  }
#}

resource "dns_ptr_record" "rvs" {
  name = element(split(".", var.vm_address), 3)
  zone = "${element(split(".", var.vm_address), 2)}.${element(split(".", var.vm_address), 1)}.${element(split(".", var.vm_address), 0)}.in-addr.arpa."
  ptr =  "${var.vm_prefix}-${var.vm_name}-${var.vm_suffix}.${var.vm_envx}.${var.vm_dns_search}."
  ttl = 300
}

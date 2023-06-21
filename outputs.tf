#AWS

output "aws_subnet_id" {
  value = aws_subnet.subnet.id
}

output "aws_security_group_id" {
  value = aws_security_group.security_group.id
}

output "aws_vm_ip" {
  value = aws_instance.vm.public_ip

}


#ARM

output "subnet_id" {
  value = azurerm_subnet.subnet.id
}

output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "security_group_id" {
  value = azurerm_network_security_group.nsg.id
}


output "arm_vm_ip" {
  value = azurerm_linux_virtual_machine.vm.public_ip_address
}
output "resource_group_name" {
  value       = azurerm_resource_group.main.name
  description = "Nazwa grupy zasobow Azure"
}
output "storage_account_name" {
  value       = azurerm_storage_account.main.name
  description = "Nazwa storage account Azure"
}
output "storage_account_connection_string" {
  value       = azurerm_storage_account.main.primary_connection_string
  description = "Connection string do storage account Azure"
  sensitive   = true

}

output "azure_virtual_network_name" {
  value       = azurerm_virtual_network.main.name
  description = "Nazwa sieci wirtualnej Azure"
}
output "azure_subnet_public_name" {
  value       = azurerm_subnet.public.name
  description = "Nazwa publicznej podsieci Azure"
}
output "azure_subnet_private_name" {
  value       = azurerm_subnet.private.name
  description = "Nazwa prywatnej podsieci Azure"
}
output "azure_vnet_address_space" {
  value       = azurerm_virtual_network.main.address_space[0]
  description = "Adresacja sieci wirtualnej Azure"

}
output "subnet_public_id" {
  value       = azurerm_subnet.public.id
  description = "ID publicznej podsieci"
}

output "subnet_private_id" {
  value       = azurerm_subnet.private.id
  description = "ID prywatnej podsieci"
}

output "nsg_public_name" {
  value       = azurerm_network_security_group.public.name
  description = "Nazwa NSG public"
}

output "nsg_private_name" {
  value       = azurerm_network_security_group.private.name
  description = "Nazwa NSG private"
}

output "public_ip_address" {
  value       = azurerm_public_ip.main.ip_address
  description = "Publiczny adres IP"
}
output "vm_name" {
  value       = azurerm_linux_virtual_machine.main.name
  description = "Nazwa maszyny wirtualnej"
}

output "ssh_connection" {
  value       = "ssh -i ${var.ssh_public_key_path} ${var.admin_username}@${azurerm_public_ip.main.ip_address}"
  description = "komenda ssh do poloczenia sie z vmka"
}

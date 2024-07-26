output "public_ip_id" {
  value       = azurerm_public_ip.public_ip.*.id
  description = "The id of public-ip get from this"
}

output "public_ip_address" {
  value       = azurerm_public_ip.public_ip.*.ip_address 
  description = "The ip address of public-ip get from this"
}

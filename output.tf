output "public_ip_id" {
  value       = azurerm_public_ip.public_ip.*.id
  description = "The id of public-ip get from this"
}

output "fqdn"{
  value = azurerm_public_ip.public_ip.fqdn
}

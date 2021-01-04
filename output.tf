 output "public_ip_fqdn" {
     value = azurerm_public_ip.TerraformPublicIp.fqdn
 }

 output "public_ip_id" {
     value = azurerm_public_ip.TerraformPublicIp.id
 }

  output "public_ip_Details" {
     value = azurerm_public_ip.TerraformPublicIp
 }
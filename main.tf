resource "azurerm_public_ip" "public_ip" {
  count               = length(var.public_ip_name)
  name                = element(var.public_ip_name, count.index)
  location            = var.location
  resource_group_name = var.resource_group_name
  domain_name_label   = var.public_ip_name[count.index]
  allocation_method   = var.allocation_method
  sku                 = var.sku
  tags                = var.tags
}

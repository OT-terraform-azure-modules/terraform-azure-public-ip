resource "azurerm_public_ip" "public_ip" {
    count               = length(var.public_ip_name)
    name                = var.public_ip_name[count.index]
    location            = var.location
    resource_group_name = var.resource_group_name
    domain_name_label   = var.domain_name_label
    allocation_method   = var.allocation_method
    sku                 = var.sku 
    tags                = var.tags
}

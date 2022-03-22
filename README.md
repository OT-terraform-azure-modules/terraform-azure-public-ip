Azure Public Ip Terraform module
=====================================

[![Opstree Solutions][opstree_avatar]][opstree_homepage]

[Opstree Solutions][opstree_homepage] 

  [opstree_homepage]: https://opstree.github.io/
  [opstree_avatar]: https://img.cloudposse.com/150x150/https://github.com/opstree.png

* Terraform module that manages an Azure Public IP Address.
* We can create multiple Public IPs at the same time using this module.
* There are two allocation method for public IP address. Possible values are Static or Dynamic.
* Assign a static public IP address to virtual machines, rather than a dynamic address, to ensure that the address never changes.
* Dynamic addresses can change if a resource such as a virtual machine is stopped (deallocated) and then restarted through Azure.

**Note : For more information, you can check example folder.**

Terraform versions
------------------
Terraform v0.15.4

Resources
------
| Name | Type |
|------|------|
| [azurerm_public_ip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |


Inputs
------
| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| public_ip_name | Name of the public ip | `list(string)` |  | yes |
| location | location for public ip | `string` |  | yes |
|  resource_group_name | Name of the resource group | `string` | | yes |
| allocation_method | the allocation method for this IP address.Possible values are Static or Dynamic | `string` | Dynamic | yes |
| sku | The SKU of the Public IP. Accepted values are Basic and Standard. | `string` | Basic | no |
| tags | tags given to public ip | `map(string)` | | no |






Output
------
| Name | Description |
|------|-------------|  
| public_ip_id | The id's of the Public_ip |


Tags
----
* Tags are assigned to resources according requirement.
* Additial tags can be assigned by tags variables as defined above.


## Related Projects

Check out these related projects.

* [Resource Group](https://registry.terraform.io/modules/OT-terraform-azure-modules/resource-group/azure/latest)


Usage
------

```hcl
module "public-ip_module" {
  source            = "./modules/public-ip"
  allocation_method = ""
  public_ip_name       = ["", ""]
  sku               = ""
  location          = ""
  tags = {
    env : ""
    author : ""
  }
}


```

### Contributors
|  [![Reena Nain][Reena_avatar]][Reena_homepage]<br/>[Reena Nain][Reena_homepage] |
|---|


  [reena_homepage]: https://github.com/reena.nai 
  [reena_avatar]: https://gitlab.com/uploads/-/system/user/avatar/9292330/avatar.png?width=400
   


Azure Public Ip Terraform module
=====================================

[![Opstree Solutions][opstree_avatar]][opstree_homepage]

[Opstree Solutions][opstree_homepage] 

  [opstree_homepage]: https://opstree.github.io/
  [opstree_avatar]: https://img.cloudposse.com/150x150/https://github.com/opstree.png

Terraform module which creates Public IP on Azure.

These types of resources are supported:

* [Public Ip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip)

Terraform versions
------------------

Terraform 0.13.

Usage
------

```hcl
module "publicIP" {
  source = "git::https://github.com/OT-terraform-azure-modules/terraform-Public_IP.git"
  public_ip_location = "eastus"
  public_ip_name = "TerraformPublicIp"
  public_ip_rg_name = "TerraformRG"
  public_ip_allocationmethod= "Static"
  tags = {
    env : "stage"
  }
}

```


Tags
----
* Tags are assigned to resources with name variable as prefix.
* Additial tags can be assigned by tags variables as defined above.

Inputs
------
| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| public_ip_name | Name of the publicIP | `string` | `"TerraformPublicIp"` | no |
| public_ip_tag | tag to associate with the publicIP | `map(string)` | `"stage"` | no |
| public_ip_location | Location in which the public IP would be created | `string` | `"eastus"` | yes |
| public_ip_rg_name | RG in which the public IP would be created | `string` | `"TerraformRG"` | yes |

Output
------
| Name | Description |
|------|-------------|
|public_ip_fqdn |This variable will give the FQDN value for the public Ip address |
|public_ip_id |This variable will give Id of the IP address |
|public_ip_Details |This variable will give all the details of public Ip address |

## Related Projects

Check out these related projects. 
* [Public Ip Implementation](https://github.com/lakshayarora476/terraform-azure-public-ip-setup/tree/main)

### Contributors

|  [![Lakshay Arora][lakshay_avatar]][lakshay_homepage]<br/>[Lakshay Arora][lakshay_homepage] |
|---|

  [lakshay_homepage]: https://github.com/lakshayarora476
  [lakshay_avatar]: https://avatars.githubusercontent.com/lakshayarora476


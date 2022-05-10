variable "public_ip_name" {
  type        = list(string)
  description = "(Required) Specifies the name of the Public IP resource"
}

variable "location" {
  type        = string
  description = "(Required) Specifies the supported Azure location where the resource exists."
}

variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the resource group in which to create the public ip"
}

variable "allocation_method" {
  type        = string
  description = "(Required) Defines the allocation method for this IP address.Possible values are Static or Dynamic"
  default     = "Dynamic"
}

variable "sku" {
  type        = string
  description = "(Optional) The SKU of the Public IP. Accepted values are Basic and Standard. Defaults to Basic."
  default     = "Basic"
}

variable "domain_name_label" {
  description = "(Optional) Label for the Domain Name. Will be used to make up the FQDN. If a domain name label is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system."
  default     = ""
}

variable "tags" {
  description = "A mapping of tags which should be assigned to the PublicIP"
  type        = map(string)
  default = {
    author : "opstree"
  }
}

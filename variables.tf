variable "pub_ip_name" {
  type        = list(string)
  description = "(Required) Specifies the name of the Public IP resource"
  default     = [" ", " "]
}

variable "location" {
  type        = string
  description = "(Required) Specifies the supported Azure location where the resource exists."
  default     = ""
}

variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the resource group in which to create the public ip"
  default     = ""
}

variable "allocation_method" {
  type        = string
  description = "(Required) Defines the allocation method for this IP address.Possible values are Static or Dynamic"
  default     = ""
}

variable "sku" {
  type        = string
  description = "(Optional) The SKU of the Public IP. Accepted values are Basic and Standard. Defaults to Basic."
  default     = ""
}

variable "tags" {
  description = "A mapping of tags which should be assigned to the PublicIP"
  type        = map(string)
  default = {
    env : ""
    author : ""
  }

}

variable "resource_group_name" {
  type        = string
  description = "the existing azure resource group name"
}

variable "vnet" {
  type = object({
    suffix     = string
    cidr_block = string
    location   = string

    subnets = map(object({
      cidr_block = string
    }))
  })

  description = "the configuration of the VNet to be created"
}
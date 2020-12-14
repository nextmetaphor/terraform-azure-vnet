variable "vnet" {
  type = object({
    suffix     = string
    cidr_block = string
    region     = string

    subnets = map(object({
      cidr_block = string
    }))
  })

  description = "the configuration of the VNet to be created"
}

variable "resource_group_name" {
  description = "the existing azure resource group name"
  type        = string
}
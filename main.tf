locals {
  vnet_name     = join("_", [var.vnet.suffix, "vnet"])
  subnet_prefix = join("_", [var.vnet.suffix, "subnet"])
}

data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

resource "azurerm_virtual_network" "vnet" {
  name                = local.vnet_name
  address_space       = [var.vnet.cidr_block]
  location            = var.vnet.location
  resource_group_name = data.azurerm_resource_group.rg.name

  tags = {
    Name = local.vnet_name
  }
}

resource "azurerm_subnet" "subnet" {
  for_each = var.vnet.subnets

  name                 = join("_", [local.subnet_prefix, each.key])
  resource_group_name  = data.azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [each.value.cidr_block]
}
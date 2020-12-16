vnet = {
  suffix     = "platform"
  cidr_block = "10.0.0.0/16"
  location   = "eastus"
  subnets = {
    subnet1 = {
      cidr_block = "10.0.1.0/24"
    }
    subnet2 = {
      cidr_block = "10.0.2.0/24"
    }
    subnet3 = {
      cidr_block = "10.0.3.0/24"
    }
  }
}
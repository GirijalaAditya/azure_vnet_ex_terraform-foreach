variable "resource_group_name" {
  type        = string
  description = "Name of the resource group to be imported."
  nullable    = false
}

variable "location" {
  type        = string
  description = "The location of the vnet to create."
  nullable    = false
}

variable "vnet_name" {
  type        = string
  description = "Name of the vnet to create"
}

variable "address_space" {
  type        = list(string)
  default     = ["10.0.0.0/16"]
  description = "The address space that is used by the virtual network."
}

variable "subnets" {
  type = map(string)
  default = {
    "subnet1" = "10.0.0.0/20",
    "subnet2" = "10.0.128.0/18"
  }
  description = "A list of public subnets inside the vNet."
}

# variable "subnet_names" {
#   type        = map(string)
#   default     = ["subnet1", "subnet2", "subnet3"]
#   description = "A list of public subnets inside the vNet."
# }

# variable "subnet_prefixes" {
#   type        = list(string)
#   default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
#   description = "The address prefix to use for the subnet."
# }

variable "tags" {
  type        = map(string)
  description = "The tags to associate with your network and subnets."
}


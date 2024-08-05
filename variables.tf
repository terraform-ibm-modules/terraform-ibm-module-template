# ########################################################################################################################
# # Input Variables
# ########################################################################################################################

variable "create_vpc" {
  description = "Indicates whether user wants to use an existing vpc or create a new one. Set it to true to create a new vpc"
  type        = bool
  default     = true
}

variable "existing_vpc_id" {
  description = "The ID of the existing vpc. Required if 'create_vpc' is false."
  type        = string
  default     = null
}

variable "resource_group_id" {
  description = "The resource group ID where the VPC to be created."
  type        = string
}


variable "prefix" {
  description = "The value that you would like to prefix to the name of the resources provisioned by this module. Explicitly set to null if you do not wish to use a prefix. This value is ignored if using one of the optional variables for explicit control over naming."
  type        = string
  default     = null
}

variable "vpc_name" {
  description = "Name of the vpc"
  type        = string
  default     = null
}

variable "enable_classic_access" {
  description = "Set to true to create a VPC that can connect to classic infrastructure resources."
  type        = bool
  default     = false
}

variable "auto_assign_address_prefix" {
  description = "Set to true to create a default address prefix automatically for each zone in the VPC."
  type        = bool
  default     = false
}

variable "default_network_acl_name" {
  description = "Name of the default network access control list (ACL)."
  type        = string
  default     = null
}

variable "default_security_group_name" {
  description = "Name of the Default Security Group"
  type        = string
  default     = null
}

variable "default_routing_table_name" {
  description = "Name of the Default Routing Table"
  type        = string
  default     = null
}

variable "no_sg_acl_rules" {
  description = "Set to true to delete all rules attached to default security group and default network ACL for a new VPC. This attribute has no impact on update."
  type        = bool
  default     = false
}

variable "vpc_tags" {
  description = "List of tags to associate with the VPC."
  type        = list(string)
  default     = []
}


# #####################################################
# # optional Parameters
# #####################################################

variable "locations" {
  description = "locations"
  type = list(object({
    zone = string
    address_prefix = optional(object({
      name = optional(string, null)
      cidr = optional(string, null)
    }), null)

    public_gateway = optional(object({
      name        = optional(string, null)
      floating_ip = optional(map(string), null)
      tags        = optional(list(string), [])
    }), null)

    subnets = optional(list(object({
      name            = string
      access_tags     = optional(list(string), [])
      ipv4_cidr_block = string
      network_acl     = optional(string, null)
      attach_public_gateway  = optional(bool, false)
      tags            = optional(list(string), [])
    })), [])
  }))
  default = []
}


variable "subnets" {
  description = "Subnets to create"
  type = list(object({
    name            = string
    zone            = string
    access_tags     = optional(list(string), [])
    ipv4_cidr_block = string
    network_acl     = optional(string, null)
    public_gateway  = optional(string, null)
    tags            = optional(list(string), [])
  }))
  default = []
}


variable "address_prefixes" {
  description = "List of Prefixes for the vpc"
  type = list(object({
    name     = string
    location = string
    ip_range = string
  }))
  default = []
}

variable "public_gateways" {
  description = "public gateways"
  type = list(object({
    zone        = string
    name        = optional(string, null)
    floating_ip = optional(map(string))
    tags        = optional(list(string), [])
  }))
  default = []
}


# variable "subnet_name_prefix" {
#   description = "Prefix to the names of subnets"
#   type        = string
#   default     = null
# }

# variable "number_of_addresses" {
#   description = "Number of IPV4 Addresses"
#   type        = number
#   default     = null
# }



# variable "create_gateway" {
#   description = "True to create new Gateway"
#   type        = bool
#   default     = false
# }

# variable "public_gateway_name_prefix" {
#   description = "Prefix to the names of the Public Gateways"
#   type        = string
#   default     = null
# }

# variable "floating_ip" {
#   description = "Floating IP `id`'s or `address`'es that you want to assign to the public gateway"
#   type        = map
#   default     = {}
# }

# variable "gateway_tags" {
#   description = "List of Tags for the gateway"
#   type        = list(string)
#   default     = []
# }

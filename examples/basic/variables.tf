########################################################################################################################
# Input variables
########################################################################################################################

variable "ibmcloud_api_key" {
  type        = string
  description = "The IBM Cloud API Key"
  sensitive   = true
}

variable "region" {
  type        = string
  description = "Region to provision all resources created by this example"
  default     = "us-south"
}

variable "prefix" {
  type        = string
  description = "Prefix to append to all resources created by this example"
  default     = "basic"
}

variable "resource_group" {
  type        = string
  description = "The name of an existing resource group to provision resources in to. If not set a new resource group will be created using the prefix variable"
  default     = null
}

variable "resource_tags" {
  type        = list(string)
  description = "Optional list of tags to be added to created resources"
  default     = []
}

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
    public_gateway  = optional(bool, false)
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

##############################################################################
# Resource Group
# (if var.resource_group is null, create a new RG using var.prefix)
##############################################################################

resource "ibm_resource_group" "resource_group" {
  count    = var.resource_group != null ? 0 : 1
  name     = "${var.prefix}-rg"
  quota_id = null
}

data "ibm_resource_group" "existing_resource_group" {
  count = var.resource_group != null ? 1 : 0
  name  = var.resource_group
}

locals {
  resource_group = var.resource_group != null ? data.ibm_resource_group.existing_resource_group[0].id : ibm_resource_group.resource_group[0].id
}

#############################################################################
# VPC
#############################################################################

resource "ibm_is_vpc" "vpc" {
  name           = "${var.prefix}-vpc"
  resource_group = local.resource_group
  tags           = var.resource_tags
}

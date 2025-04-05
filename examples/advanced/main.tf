########################################################################################################################
# Resource group
########################################################################################################################

module "resource_group" {
  source  = "terraform-ibm-modules/resource-group/ibm"
  version = "1.2.0"
  # if an existing resource group is not set (null) create a new one using prefix
  resource_group_name          = var.resource_group == null ? "${var.prefix}-resource-group" : null
  existing_resource_group_name = var.resource_group
}

########################################################################################################################
# COS
########################################################################################################################

#
# Developer tips:
#   - Call the local module / modules in the example to show how they can be consumed
#   - Include the actual module source as a code comment like below so consumers know how to consume from correct location
#

module "cos" {
  source = "../.."
  # remove the above line and uncomment the below 2 lines to consume the module from the registry
  # source            = "terraform-ibm-modules/<replace>/ibm"
  # version           = "X.Y.Z" # Replace "X.Y.Z" with a release version to lock into a specific release
  name              = "${var.prefix}-cos"
  resource_group_id = module.resource_group.resource_group_id
  resource_tags     = var.resource_tags
  plan              = "cos-one-rate-plan"
}

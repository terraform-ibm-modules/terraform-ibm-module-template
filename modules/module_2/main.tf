/**************************************************
Used to define the resource

e.g:

locals {
  provision_namespace = var.provision_namespace
  create_package      = var.create_package
}

resource "ibm_function_namespace" "function_namespace" {
  count             = var.provision_namespace ? 1 : 0
  name              = var.namespace_name
  description       = (var.namespace_description != null ? var.namespace_description : null)
  resource_group_id = var.resource_group_id
}
***************************************************/


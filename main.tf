#
# Developer tips:
#   - Below code should be replaced with the code for the root level module
#

resource "ibm_resource_instance" "cos_instance" {
  name              = var.name
  resource_group_id = var.resource_group_id
  service           = "cloud-object-storage"
  plan              = var.plan
  location          = "global"
  tags              = var.resource_tags
}

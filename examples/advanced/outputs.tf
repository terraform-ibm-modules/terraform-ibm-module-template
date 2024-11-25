##############################################################################
# Outputs
##############################################################################

#
# Developer tips:
#   - Include all relevant outputs from the modules being called in the example
#

output "account_id" {
  description = "An alpha-numeric value identifying the account ID."
  value       = module.cos.account_id
}

output "guid" {
  description = "The GUID of the resource instance."
  value       = module.cos.account_id
}

output "id" {
  description = "The unique identifier of the resource instance."
  value       = module.cos.id
}

output "crn" {
  description = "The CRN of the resource instance."
  value       = module.cos.crn
}

output "resource_group_name" {
  description = "Resource group name."
  value       = module.resource_group.resource_group_name
}

output "resource_group_id" {
  description = "Resource group ID."
  value       = module.resource_group.resource_group_id
}

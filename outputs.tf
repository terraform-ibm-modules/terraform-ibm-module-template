########################################################################################################################
# Outputs
########################################################################################################################

#
# Developer tips:
#   - Below are some good practise sample outputs
#   - They should be updated for outputs applicable to the module being added
#   - Use variable validation when possible
#

output "account_id" {
  description = "An alpha-numeric value identifying the account ID."
  value       = ibm_resource_instance.cos_instance.account_id
}

output "guid" {
  description = "The GUID of the resource instance."
  value       = ibm_resource_instance.cos_instance.guid
}

output "id" {
  description = "The unique identifier of the resource instance."
  value       = ibm_resource_instance.cos_instance.id
}

output "crn" {
  description = "The CRN of the resource instance."
  value       = ibm_resource_instance.cos_instance.crn
}

/********************************************************************

This file is used to capture ROOT module outputs.

E.g:

output "at_id" {
  description = "Activity tracker id"
  value       = concat(ibm_resource_instance.at_instance.*.id, [""])[0]
}

output "at_guid" {
  description = "The GUID of the activity tracker"
  value       = concat(ibm_resource_instance.at_instance.*.guid, [""])[0]
}

output "at_key_id" {
  description = "Activity tracker key id"
  value       = concat(ibm_resource_key.activity_tracker_key.*.id, [""])[0]
}

*********************************************************************/

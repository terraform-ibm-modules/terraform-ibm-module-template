########################################################################################################################
# Outputs
########################################################################################################################

#output "myoutput" {
#  description = "Description of my output"
#  value       = "value"
#}

output "vpc" {
  value = var.create_vpc ? ibm_is_vpc.vpc : data.ibm_is_vpc.vpc
}

output "address_prefix" {
  value = ibm_is_vpc_address_prefix.vpc_address_prefixes
}

output "Subnets" {
  value = local.subnet
}

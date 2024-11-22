########################################################################################################################
# Input Variables
########################################################################################################################

#
# Developer tips:
#   - Below are some common module input variables
#   - They should be updated for input variables applicable to the module being added
#   - Use variable validation when possible
#

variable "name" {
  type        = string
  description = "A descriptive name used to identify the resource instance."
}

variable "plan" {
  type        = string
  description = "The name of the plan type supported by service."
  default     = "standard"
  validation {
    condition     = contains(["standard", "cos-one-rate-plan"], var.plan)
    error_message = "The specified pricing plan is not available. The following plans are supported: 'standard', 'cos-one-rate-plan'"
  }
}

variable "resource_group_id" {
  type        = string
  description = "The ID of the resource group where you want to create the service."
}

variable "resource_tags" {
  type        = list(string)
  description = "List of resource tag to associate with the instance."
  default     = []
}

/********************************************************************

This file is used to declare ROOT varaibles.

E.g:

variable "at_service_name" {
  type        = string
  description = "Activity Tracker: The name of the activity tracker"
}

variable "at_bind_key" {
  description = "Activity Tracker: Enable this to bind key to instance (true/false)"
  type        = bool
  default     = false
}

variable "at_create_instance" {
  description = "Activity Tracker: Controls if Activity Tracker should be created"
  type        = bool
  default     = true
}

********************************************************************/

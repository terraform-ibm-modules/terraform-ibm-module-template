terraform {
  # require 1.9 or later to make use of cross-object referencing for input variable validations
  #   more info: https://www.hashicorp.com/blog/terraform-1-9-enhances-input-variable-validations
  required_version = ">= 1.9.0"

  #
  # Developer tips:
  #   - If your module requires any terraform providers, add them the "required_providers" section below.
  #   - Each required provider's version should be a flexible range to future proof the module's usage with upcoming minor and patch versions.
  #

  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = ">= 1.71.2, < 2.0.0"
    }
  }
}

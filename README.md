# IBM Cloud <module_name> - Terraform Module

Mention the purpose of writing these modules.

E.g:

This is a collection of modules that make it easier to provision and configure Observability services like logging, monitor and activity tracker on IBM Cloud Platform:
* [logging-logdna](modules/logging-logdna)
* [monitoring-sysdig](modules/monitoring-sysdig)
* [activity-tracker-logdna](modules/activity-tracker-logdna)

## Compatibility

This module is meant for use with Terraform 0.13 (and higher).

## Usage

Full examples are in the [examples](./examples/) folder, demonstarte how to use a module through a template:

e.g:

```hcl
provider "ibm" {
}

data "ibm_resource_group" "logdna" {
  name = var.resource_group
}

module "logdna_instance" {
  source  = "terraform-ibm-modules/observability/ibm//modules/logging-logdna"


  bind_resource_key   = var.bind_resource_key
  service_name        = var.service_name
  resource_group_id   = data.ibm_resource_group.logdna.id
  plan                = var.plan
  region              = var.region
  service_endpoints   = var.service_endpoints
  tags                = var.tags
  resource_key_name   = var.resource_key_name
  role                = var.role
  resource_key_tags   = var.resource_key_tags
}

```

## Requirements

### Terraform plugins

- [Terraform](https://www.terraform.io/downloads.html) 0.13 (or later)
- [terraform-provider-ibm](https://github.com/IBM-Cloud/terraform-provider-ibm)

## Install

### Terraform

Be sure you have the correct Terraform version (0.13), you can choose the binary here:
- https://releases.hashicorp.com/terraform/

### Terraform plugins

Be sure you have the compiled plugins on $HOME/.terraform.d/plugins/

- [terraform-provider-ibm](https://github.com/IBM-Cloud/terraform-provider-ibm)

### Pre-commit hooks

Run the following command to execute the pre-commit hooks defined in .pre-commit-config.yaml file
```
pre-commit run -a
```
You can install pre-coomit tool using

```
pip install pre-commit
```
or
```
pip3 install pre-commit
```
## How to input variable values through a file

To review the plan for the configuration defined (no resources actually provisioned)
```
terraform plan -var-file=./input.tfvars
```
To execute and start building the configuration defined in the plan (provisions resources)
```
terraform apply -var-file=./input.tfvars
```

To destroy the VPC and all related resources
```
terraform destroy -var-file=./input.tfvars
```

## Note

All optional parameters, by default, will be set to `null` in respective example's variable.tf file. You can also override these optional parameters.


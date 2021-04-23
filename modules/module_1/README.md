# <Module_Name_Here> Example

This module is used to create an <define the purpose of module>

## Example Usage

Give an example to show how to invoke this module using a template

e.g:

```

data "ibm_resource_group" "resource_group" {
  name = var.resource_group
}

module "action" {
  source = "terraform-ibm-modules/function/ibm//modules/action"

  action_name               = var.action_name
  namespace_name            = var.namespace_name
  resource_group_id         = data.ibm_resource_group.resource_group.id
  provision_namespace       = var.provision_namespace
  create_package            = var.create_package
  package_name              = var.package_name
  exec                      = var.exec
  limits                    = var.limits
  action_publish            = var.action_publish
  user_defined_annotations  = var.user_defined_annotations
  user_defined_parameters   = var.user_defined_parameters

}
```

Create a table capturing input variable details like `name` with `basic decription`, `type of variable`, mention if any `default value` exists and finally mention whether a variable is `required or not to provision the resource`.

Giving following table for reference :

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inputs

| Name                              | Description                                           | Type   | Default | Required |
|-----------------------------------|-------------------------------------------------------|--------|---------|----------|
| action_name                       | Name of action.                                       | string | n/a     | yes      |
| namespace_name                    | Namespace to which the rule is attached               | string | n/a     | yes      |

## Outputs

| Name | Description        |
|------|--------------------|
| name | The name of output |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
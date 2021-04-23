# <Use_Case_Name> Example

This example illustrates how to use the <Specify the Use_Case_Here>.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inputs

Create a table capturing input variable details like `name` with `basic decription`, `type of variable`, mention if any `default value` exists and finally mention whether a variable is `required or not to provision the resource`.

Giving following table for reference :

| Name                              | Description                                           | Type   | Default | Required |
|-----------------------------------|-------------------------------------------------------|--------|---------|----------|
| action_name                       | Name of action.                                       | string | n/a     | yes      |
| namespace_name                    | Namespace to which the rule is attached               | string | n/a     | yes      |


<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## How to input variable values through a file

To review the plan for the configuration defined (no resources actually provisioned)

`terraform plan -var-file=./input.tfvars`

To execute and start building the configuration defined in the plan (provisions resources)

`terraform apply -var-file=./input.tfvars`

To destroy the VPC and all related resources

`terraform destroy -var-file=./input.tfvars`

All optional parameters by default will be set to null in respective example's variable.tf file. If user wants to configure any optional paramter he has overwrite the default value.

## Note

For all optional fields, default values (Eg: `null`) are given in variable.tf file. User can configure the same by overwriting with appropriate values.
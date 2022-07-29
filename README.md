<!-- Update the title to match the module name and add a description -->
# Terraform Modules template project

<!-- UPDATE BADGES:
1. Make sure that the badge link for the current status of the module is correct. For the status options, see https://github.ibm.com/GoldenEye/documentation/blob/master/status.md.
2. Update the "Build Status" badge to point to the travis pipeline for the module. Replace "module-template" in two places.
3. Update the "latest release" badge to point to the new module. Replace "module-template" in two places.
-->
[![Incubating (Not yet consumable)](https://img.shields.io/badge/Status-Incubating%20(Not%20yet%20consumable)-red)](https://github.ibm.com/GoldenEye/documentation/blob/master/status.md) [![Build Status](https://travis.ibm.com/GoldenEye/module-template.svg?token=3Ry6sEDNvWajQPuZHgTZ&branch=master)](https://travis.ibm.com/GoldenEye/module-template) [![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release) [![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit) [![latest release](https://shields-server.m03l6u0cqkx.eu-de.codeengine.appdomain.cloud/github/v/release/GoldenEye/module-template?logo=GitHub)](https://github.ibm.com/GoldenEye/module-template/releases/latest)

<!-- Remove the content in this H2 heading after completing the steps -->

## Submit a new module

:+1::tada: Thank you for taking the time to contribute! :tada::+1:

This template repository exists to help you create Terraform modules for IBM Cloud.

The default structure includes the following files:

- `README.md`: A description of the module
- `main.tf`: The logic for the module
- `version.tf`: The required terraform and provider versions
- `variables.tf`: The input variables for the module
- `outputs.tf`: The values that are output from the module

You can add other content to support what your module does and how it works. For example, you might add a `scripts/` directory that contains shell scripts that are run by a `local-exec` `null_resource` in the Terraform module.

Follow this process to create and submit a GoldenEye Terraform module.

### Before you begin

If you have an idea for a new module, post about it in the [#project-goldeneye](https://ibm-cloudplatform.slack.com/archives/C02SDGCJAB1) Slack channel. The GoldenEye team can discuss with you how to collaborate and develop the module.

### Create a new repo from this repo template

Create a new repository from this repository template by clicking `Use this template` in the GitHub UI (top right). For more information about creating a repository from a template, see the [GitHub docs](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template).

### Clone the repo and set up your development environment

Locally clone the new repository and set up your development environment by completing the tasks in [Local development setup](https://github.ibm.com/GoldenEye/documentation/blob/master/local-dev-setup.md) in the GoldenEye docs.

### Set up Travis

Post a request in the [#project-goldeneye](https://ibm-cloudplatform.slack.com/archives/C02SDGCJAB1) Slack channel to have your repo added to Travis. For more information, see [Setting up Travis for a new repo](https://github.ibm.com/GoldenEye/documentation/blob/master/travis-setup.md) in the GoldenEye docs.

### Update the Terraform files

Implement the logic for your module by updating the `main.tf`, `version.tf`, `variables.tf`, and `outputs.tf` Terraform files. For more information, see [Creating Terraform on IBM Cloud templates](https://cloud.ibm.com/docs/ibm-cloud-provider-for-terraform?topic=ibm-cloud-provider-for-terraform-create-tf-config).

### Create examples and tests

Add one or more examples in the `examples` directory that consume your new module, and configure tests for them in the `tests` directory. For more information about tests, see [Tests](https://github.ibm.com/GoldenEye/documentation/blob/master/tests.md).

### Update the content in the readme file

After you implement the logic for your module and create examples and tests, update this readme file in your repository by following these steps:

1.  Update the title heading and add a description about your module.
1.  Update the badge links.
1.  Remove all the content in this H2 heading section.
1.  Complete the [Usage](#usage), [Required IAM access policies](#required-iam-access-policies), and [Examples](#examples) sections. The [Requirements](#requirements) section is populated by a pre-commit hook.

### Commit your code and submit your module for review

1.  Before you commit any code, review the [contributing guidelines](https://github.ibm.com/GoldenEye/documentation/blob/master/contributing.md) in the GoldenEye docs for prerequisites and tips.
1.  Create a pull request and post in the [#project-goldeneye](https://ibm-cloudplatform.slack.com/archives/C02SDGCJAB1) Slack channel to ask for it to be reviewed.

### Post-merge steps
After the first PR for your module is merged, follow these post-merge steps:

1.  Create a PR to enable the upgrade test by removing the `t.Skip` line in `tests/pr_test.go`.
1.  Add your new module to the [module list](https://github.ibm.com/GoldenEye/documentation/blob/master/modules-list.md).
1.  Post a request in the [#project-goldeneye](https://ibm-cloudplatform.slack.com/archives/C02SDGCJAB1) Slack channel to have your module added to the continuous testing pipeline. For more information about the steps, see [Adding a new module to Goldeneye Continuous Testing pipeline](https://github.ibm.com/GoldenEye/operations/blob/master/continuous-testing/README.md).
1.  Post a request in the [#project-goldeneye](https://ibm-cloudplatform.slack.com/archives/C02SDGCJAB1) Slack channel to have your module published to the IBM Cloud catalog. For more information about the steps, see [Add a module to the IBM Cloud catalog](https://github.ibm.com/GoldenEye/documentation/blob/master/catalog.md).

<!-- Remove the content in this previous H2 heading -->

## Usage

<!-- Add sample usage of the module itself in the following code block -->
```hcl

```

<!--
Include the following 'Controls' section if the module implements NIST controls
Remove the 'section if the module does not implement controls
-->

<!-- GoldenEye core team only
## Compliance and security

This module implements the following NIST controls. For more information about how this module implements the controls in the following list, see [NIST controls](docs/controls.md).

| Profile | Category | ID       | Description |
|---------|----------|----------|-------------|
| NIST    | SC-7     | SC-7(3)  | Limit the number of external network connections to the information system. |

The 'Profile' and 'ID' columns are used by the IBM Cloud catalog to import
the controls into the catalog page.

In the example here, remove the SC-7 row and include a row for each control
that the module implements.

Include the control enhancement in the ID column ('SC-7(3)' in this example).

Identify how the module is complying with the controls. Summarize the
rationale or implementation in the 'Description' column.

For details about the controls, see the NIST Risk Management Framework page at
https://csrc.nist.gov/Projects/risk-management/sp800-53-controls/release-search#/controls?version=4.0.
-->

## Required IAM access policies
You need the following permissions to run this module.

<!--
Update these sample permissions, following this format. Replace the sample
Cloud service name and roles with the information in the console at
Manage > Access (IAM) > Access groups > Access policies.
 -->

- Account Management
    - **Sample Account Service** service
        - `Editor` platform access
        - `Manager` service access
- IAM Services
    - **Sample Cloud Service** service
        - `Administrator` platform access

For more information about the access you need to run all the GoldenEye modules, see [GoldenEye IAM permissions](https://github.ibm.com/GoldenEye/documentation/blob/master/goldeneye-iam-permissions.md).

## Examples

<!-- Update the sample examples in the examples folder and link to them. -->
- [End to end example with default values](examples/default)
- [End to end example with non default values](examples/non-default)
- [Example that uses existing resources](examples/existing-resources)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |

## Modules

No modules.

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

<!-- Leave this section as is so that your module has a link to local development environment set up steps for contributors to follow -->
## Developing
To set up your local development environment, see steps [here](https://github.ibm.com/GoldenEye/documentation/blob/master/local-dev-setup.md)

<!-- BEGIN EXAMPLES HOOK -->
## Examples

- [# Default example](examples/default)
- [# Example that uses existing resources](examples/existing-resources)
- [# Non default example](examples/non-default)
<!-- END EXAMPLES HOOK -->

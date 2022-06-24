# Github Actions Workflows

Github Actions Workflows (GHA) are used to execute various CI/CD pipelines for Terraform modules.

By default, all Terraform modules should implement the following common workflows:
- `common-terraform-module-ci` for pull requests and merges into main branch
- `common-release` for semantic release version tagging, executed after CI pipeline successful completion on main branch

## Common Workflows
Module workflows should leverage the reusable common GHA workflows provided in this repository: [Common Pipeline Assets](https://github.com/terraform-ibm-modules/common-pipeline-assets)

For security reasons it is best to reference any reusable workflows with a release version, instead of referencing with a branch. Our automated `renovate` task will be able to keep the semantic version of any Common Pipeline Assets updated as new releases are created.

The common pipeline workflows rely on secrets that are contained in the [terraform-ibm-modules](https://github.com/terraform-ibm-modules). These secrets can be passed in from the module workflows by using the `secrets: inherit` functionality of GHA.

## Example of Common Pipeline Asset usage
```yaml
jobs:
  call-terraform-ci-pipeline:
    uses: terraform-ibm-modules/common-pipeline-assets/.github/workflows/common-terraform-module-ci.yml@v1.0.0
    secrets: inherit
```

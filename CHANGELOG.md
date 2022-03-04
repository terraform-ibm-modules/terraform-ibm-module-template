# Changelog

All notable changes to this project will be documented in this file.

Extending the adopted spec, each change should have a link to its
corresponding pull request appended.

## [Release_version] - Date

Can have following 3 sections

* FEATURES:      Description (pullRequest link)
* IMPROVEMENTS:  Description (pullRequest link)
* BUGS:          Description (pullRequest link)

## Sample Changelog:

## v1.1 (January 2020)

FEATURES: 
* **new feature:**  Add support for naming convention ([#3](https://github.com/terraform-ibm-modules/terraform-ibm-cluster/tree/master/modules))
* **new feature:**  Add examples ([#2](https://github.com/terraform-ibm-modules/terraform-ibm-cluster/issues/2))

IMPROVEMENTS:
* **improvement:**  Unifing input variable names accross CAF modules (resource_group_name -> rg,log_analytics_workspace_id -> la_workspace_id) ([#5](https://github.com/terraform-ibm-modules/terraform-ibm-cluster/issues/5))

BUGS:
* **bug fix:** Support for eventhub diagnostics is now optionnal ([#6](https://github.com/terraform-ibm-modules/terraform-ibm-cluster/issues/6)) 

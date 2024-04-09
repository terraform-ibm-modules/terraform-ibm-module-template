<!-- Update the title -->
# Deployable Module Template

<!-- Update the below text with the name of the module  -->

A thin wrapper around the [terraform-ibm-module-template](../../) module which includes a provider configuration meaning it can be deployed as is.
This is not intended to be called by one or more other modules since it contains a provider configuration, meaning it is not compatible with the `for_each`, `count`, and `depends_on` arguments. For more information see [Providers Within Modules](https://developer.hashicorp.com/terraform/language/modules/develop/providers).

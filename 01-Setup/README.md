# 01-Setup
The first step to start working with Terraform is to specify the versions that we are going to work with. This information is specified in the `versions.tf` file:

```
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.7"
}
```

The `terraform` block has multiple attributes. The following one will be fulfilled:

- required_providers: Used to specify the versions of the cloud providers used in this deployment. Multiple providers can be specified for the same or different cloud providers.
- required_version: Specifies the version of terraform that will be used to deploy. Check that the specified version is installed in your machine.

## Test

To test the versions.tf file we will download the provider specified versions. 

We will run `terraform init` in this folder. The first thing Terraform will check is that the specified Terraform version is installed in the machine.

Afterwards It will download the specified provider version.

Finally, It will download any custom module referenced in the deployment. 

## Basic commands

To test the configuration we will create a resource group. 


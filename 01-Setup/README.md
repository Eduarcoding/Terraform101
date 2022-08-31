# 01-Setup

## Installation
#### Manual
The manual installation involves downloading the terraform [binaries](https://www.terraform.io/downloads) and adding them to the `PATH`.


After downloading Terraform, unzip the package. Terraform runs as a single binary named terraform. Any other files in the package can be safely removed and Terraform will still function.

Finally, make sure that the terraform binary is available on your `PATH`. This process will differ depending on your operating system.
#### Package manager

If you have chocolatey installed in your machine, you can install terraform by just running the following command: 

`choco install terraform`


##### Verify installation
Verify that Terraform has been properly installed by running `terraform version` from your preferred shell. 

## Azure authentication
In order to deploy infrastructure to Azure from your local machine, you will need the latest version of the `az-cli` installed in your machine.

Run `az-login` and login with your account. Afterwards you can check the default subscription with the following command `az account list`. Be sure that the one that you want to use has the `isDefault` property set to `true`.

If not, you can set it with the following command `az account set --subscription mysubscription`.

## Versions
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


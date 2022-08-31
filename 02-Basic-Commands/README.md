# 02 - Basic Commands
The command line interface to Terraform is via the terraform command, which accepts a variety of subcommands such as the following ones.

## Init
Prepares your working directory for other commands. It downloads the needed providers and modules that will be used in the deployment.
## Validate
Checks whether the configuration is valid
## Plan
Creates an execution plan, which lets you preview the changes that Terraform plans to make to your infrastructure. By default, when Terraform creates a plan it:

- Reads the current state of any already-existing remote objects to make sure that the Terraform state is up-to-date.
- Compares the current configuration to the prior state and noting any differences.
- Proposes a set of change actions that should, if applied, make the remote objects match the configuration.

Using the --out param we can output the plan to a file, this file can be used as an input parameter for the `apply` command.
## Apply
Create or update infrastructure executing the actions proposed in a Terraform plan. If no plan is provided terraform will execute `plan` on his own to generate it. 

By default terraform will prompt us for confirmation before applying any change. When automating infrastructure the `-auto-approve` option is used to skip this manual approval. 
## Destroy
Used to destroy all remote objects managed by a particular Terraform configuration.

## Full list

To get a full list of the Terraform commands run `terraform` in the console.
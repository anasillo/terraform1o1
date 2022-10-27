# terraform 1o1

## Requirements

Install:

- Terraform: https://learn.hashicorp.com/tutorials/terraform/install-cli
- AWS CLI: https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

## AWS setup

In file `~/.aws/credentials` place your AWS-CLI credentials and token under the default profile (or the profile of your choice)

- access key
- secret access key
- session token
  Run this command to verify your identity \
  `aws sts get-caller-identity`

## Initialize terraform

Stand in the directory with main terraform file and run
`terraform init`

# Terraform relies on plugins called "providers" to interact with cloud providers, SaaS providers, 
# and other APIs. Terraform configurations must declare which providers they require so that 
# Terraform can install and use them.

# Resource: Providers
# https://registry.terraform.io/browse/providers
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.20.0"
    }
  }

  required_version = ">= 0.14.9"
}

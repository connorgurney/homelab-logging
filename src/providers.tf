# Terraform configuration
terraform {
  # Backend configuration
  backend "s3" {
    region = "eu-west-2"

    bucket               = "connorgurney-homelab-iac-state"
    key                  = "shared/homelab-logging"
    workspace_key_prefix = ""

    dynamodb_table = "connorgurney-homelab-iac-locks"
  }
}

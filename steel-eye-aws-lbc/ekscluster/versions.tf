
locals {
  account_id = data.aws_caller_identity.current.account_id
}

# Terraform Settings Block
terraform {
  required_version = "~> 1.5.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 4.65"
     }
  }
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "122020192764-steel-eye-terraform"
    key    = "terraform.tfstate"
    region = "us-east-1"

    # For State Locking
    dynamodb_table = "122020192764-steel-eye-terraform-lock"
  }
}

# Terraform Provider Block
provider "aws" {
  region = var.aws_region
}
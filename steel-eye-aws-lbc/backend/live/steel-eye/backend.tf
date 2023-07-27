terraform {
  required_version = ">= 1.0.0"

  backend "s3" {
    region         = "us-east-1"
    bucket         = "steel-eye-terraform-on-aws-eks"
    key            = "dev/eks-cluster/terraform.tfstate"
    dynamodb_table = "steel-eye-terraform-on-aws-eks-terraform-state-lock"
    profile        = ""
    role_arn       = ""
    encrypt        = "true"
  }
}

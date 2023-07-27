terraform {
  required_version = ">= 1.0.0"

  backend "s3" {
    region         = "us-east-1"
    bucket         = "steel-eye-nginx-ingress-controller-terraform-state"
    key            = "terraform.tfstate"
    dynamodb_table = "steel-eye-nginx-ingress-controller-terraform-state-lock"
    profile        = ""
    role_arn       = ""
    encrypt        = "true"
  }
}

terraform {
  required_version = ">= 1.0.0"

  backend "s3" {
    region         = "us-east-1"
    bucket         = "987728975796-us-east-1-steel-eye-terraform-state"
    key            = "terraform.tfstate"
    dynamodb_table = "987728975796-us-east-1-steel-eye-terraform-state-lock"
    profile        = ""
    role_arn       = ""
    encrypt        = "true"
  }
}

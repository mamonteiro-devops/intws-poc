terraform {
  required_version = ">= 1.0.0"

  backend "s3" {
    region         = "us-east-1"
    bucket         = "122020192764-steel-eye-terraform"
    key            = "terraform.tfstate"
    dynamodb_table = "122020192764-steel-eye-terraform-lock"
    profile        = ""
    role_arn       = ""
    encrypt        = "true"
  }
}

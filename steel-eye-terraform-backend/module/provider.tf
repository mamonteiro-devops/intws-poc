provider "aws" {
  region = "us-east-1"
  allowed_account_ids = [var.aws_account_id] # ensure that each stage is deployed to the right AWS account

  default_tags {
    tags = {
      "steel-eye:demo:environment" = var.stage
      "steel-eye:product:name"      = var.default_tag_value_kn_ccc_product_name_tag_value
      "steel-eye:environment:stage" = var.default_tag_value_kn_ccc_environment_stage
    }
  }
}

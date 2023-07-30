module "terraform_state_backend" {
  source = "cloudposse/tfstate-backend/aws"
  # Cloud Posse recommends pinning every module to a specific version
  # version     = "x.x.x"
  namespace  = local.account_id
  stage      = "steel-eye"
  name       = "terraform"
  #attributes = ["state"]

  terraform_backend_config_file_path = "."
  terraform_backend_config_file_name = "backend.tf"
  force_destroy                      = false
}

data "aws_caller_identity" "current" {}

locals{
  account_id = data.aws_caller_identity.current.account_id
}


output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "s3_bucket_id" {
  value = module.terraform_state_backend.s3_bucket_id
}

output "dynamodb_table_id" {
  value = module.terraform_state_backend.dynamodb_table_id
}


output "caller_arn" {
  value = data.aws_caller_identity.current.arn
}

output "caller_user" {
  value = data.aws_caller_identity.current.user_id
}


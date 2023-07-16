module "terraform-backend" {
  source                                     = "../../module"
  stage                                      = "steel-eye"
  aws_account_id                             = "214463555891"
  default_tag_value_kn_ccc_environment_stage = "dev"
}

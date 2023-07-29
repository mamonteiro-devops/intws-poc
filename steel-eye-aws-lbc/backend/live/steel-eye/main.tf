module "terraform-backend" {
  source                                     = "../../module"
  stage                                      = "steel-eye"
  #aws_account_id                             = "732108167437"
  default_tag_value_kn_ccc_environment_stage = "dev"
}

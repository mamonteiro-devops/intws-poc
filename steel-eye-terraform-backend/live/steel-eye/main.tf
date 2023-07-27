module "terraform-backend" {
  source                                     = "../../module"
  stage                                      = "steel-eye"
  default_tag_value_kn_ccc_environment_stage = "dev"
}

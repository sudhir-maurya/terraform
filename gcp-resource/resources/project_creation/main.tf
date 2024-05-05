module "project-factory" {
  source  = "../../modules/terraform-google-project-factory"
  #version = "15.0.0"
  name = var.name
  billing_account = var.billing_account
}

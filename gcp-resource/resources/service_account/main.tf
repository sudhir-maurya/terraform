module "service_accounts" {
  source = "../../modules/service_account/google-service-accounts"
  project_id    = var.project_id
  prefix        = var.prefix
  names         = var.names
  project_roles = [
    "project-foo=>roles/viewer",
    "project-spam=>roles/storage.objectViewer",
  ]
}

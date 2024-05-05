module "gcs_buckets" {
  source  =  "../../modules/google_cloud_storage/google_cloud_storage"
  location = var.location
  project_id = var.project_id
  names = var.names
  prefix = var.prefix 
}

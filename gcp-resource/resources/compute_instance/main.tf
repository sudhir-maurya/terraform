module "instance_template" {
  source  = "../../modules/compute_instance/instance_template"

  region          = var.region
  project_id      = var.project_id
  subnetwork      = var.subnetwork
  service_account = var.service_account
  machine_type = var.machine_type
  source_image = var.source_image
  source_image_project = var.source_image_project
}

module "compute_instance" {
  source  = "../../modules/compute_instance/compute_instance"

  region              = var.region
  zone                = var.zone
  subnetwork          = var.subnetwork
  num_instances       = var.num_instances
  hostname            = var.hostname
  instance_template   = module.instance_template.self_link

  deletion_protection = false


  access_config = [{
    nat_ip       = var.nat_ip
    network_tier = var.network_tier
  }, ]
}


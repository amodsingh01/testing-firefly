provider "google" {
  project = var.project_id
  region  = var.region
}

module "network" {
  source = "./network"

  project_id = var.project_id
  region     = var.region
}

module "gke_cluster" {
  source = "./gke_cluster"

  project_id = var.project_id
  region     = var.region

  network_name     = module.network.network_name
  subnetwork_names = module.network.subnetwork_names
}
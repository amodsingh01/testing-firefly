module "gke" {
  source = "terraform-google-modules/kubernetes-engine/google"

  project_id = var.project_id
  region     = var.region

  name               = "gke-cluster"
  network            = var.network_name
  subnetwork         = var.subnetwork_names[0]
  subnetwork_project = var.project_id

  node_pools = [
    {
      name               = "default-pool"
      machine_type       = "n1-standard-1"
      initial_node_count = 1
    }
  ]
}

output "cluster_endpoint" {
  value = module.gke.endpoint
}

output "cluster_ca_certificate" {
  value = module.gke.ca_certificate
}
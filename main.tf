provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.region

  remove_default_node_pool = true

  node_pool {
    name       = var.node_pool_name
    machine_type = var.machine_type
    disk_size_gb = var.disk_size_gb
    node_count = var.node_count
    preemptible = var.preemptible
    tags = var.node_tags
  }

  master_auth {
    username = ""
    password = ""

    client_certificate_config {
      issue_client_certificate = false
    }
  }

  timeouts {
    create = "30m"
    delete = "30m"
  }
}

output "cluster_endpoint" {
  value = google_container_cluster.primary.endpoint
}

output "cluster_ca_certificate" {
  value = google_container_cluster.primary.master_auth[0].cluster_ca_certificate
}

output "cluster_name" {
  value = google_container_cluster.primary.name
}
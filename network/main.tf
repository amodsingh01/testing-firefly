resource "google_compute_network" "network" {
  name                    = "gke-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  count = 3

  name          = "gke-subnet-${count.index}"
  ip_cidr_range = "10.0.${count.index}.0/24"
  network       = google_compute_network.network.self_link
}

resource "google_compute_firewall" "allow-ssh" {
  name    = "allow-ssh"
  network = google_compute_network.network.self_link

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}

output "network_name" {
  value = google_compute_network.network.name
}

output "subnetwork_names" {
  value = google_compute_subnetwork.subnet.*.name
}
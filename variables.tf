variable "project_id" {
  description = "The ID of the project in which the resource belongs"
}

variable "region" {
  description = "The region in which the resource belongs"
  default     = "us-central1"
}

variable "cluster_name" {
  description = "The name of the cluster"
}

variable "node_count" {
  description = "The number of nodes in the cluster"
  default     = 1
}

variable "machine_type" {
  description = "The machine type of the nodes"
  default     = "n1-standard-1"
}

variable "disk_size_gb" {
  description = "The size of the node disk in GB"
  default     = 10
}
variable "project_id" {
  description = "The ID of the project in which the resource belongs"
}

variable "region" {
  description = "The region in which the resource belongs"
}

variable "cluster_name" {
  description = "The name of the GKE cluster"
}

variable "node_pool_name" {
  description = "The name of the node pool"
}

variable "machine_type" {
  description = "The machine type of the nodes"
  default     = "n1-standard-1"
}

variable "disk_size_gb" {
  description = "The size of the disk in GB"
  default     = 10
}

variable "node_count" {
  description = "The number of nodes in the node pool"
  default     = 1
}

variable "preemptible" {
  description = "Whether the nodes are preemptible"
  default     = false
}

variable "node_tags" {
  description = "The tags to apply to the nodes"
  default     = []
}
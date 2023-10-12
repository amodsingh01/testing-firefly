variable "project_id" {
  description = "The ID of the project where resources will be created."
}

variable "region" {
  description = "The region where resources will be created."
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  default     = "10.0.0.0/16"
}
provider "google" {
  project = var.project_id
  region  = var.region
}

module "vpc" {
  source = "./vpc"

  project_id = var.project_id
  region     = var.region
  vpc_cidr   = var.vpc_cidr
}

module "gke" {
  source = "./gke"

  project_id = var.project_id
  region     = var.region
  vpc_name   = module.vpc.vpc_name
  subnets    = module.vpc.subnets
}

module "firewall" {
  source = "./firewall"

  project_id = var.project_id
  region     = var.region
  vpc_name   = module.vpc.vpc_name
  subnets    = module.vpc.subnets
}
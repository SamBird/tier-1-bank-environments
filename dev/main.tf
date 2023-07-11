# main.tf
provider "google" {
  region      = "europe-west2"
}

module "gcp_project" {
  source              = "git::https://github.com/organization/repository.git?ref=main"
  project_name        = var.project_name
  project_id          = var.project_id
  org_id              = var.org_id
  auto_create_network = var.auto_create_network
  labels              = var.labels
  api_list            = var.api_list
}

# module "gcp_gke" {
#   source                      = "../../tier-1-bank-tf-modules/gcp-gke"
#   gke_cluster_name            = "tooling-dev-kcl-01-euwe2"
#   gke_node_pool_name          = "tooling-dev-np-euwe2"
#   gke_node_pool_machine_type  = "n1-standard-8"
#   description                 = "Dev Tooling Cluster"
#   min_node_count              = 1
#   max_node_count              = 3
#   http_load_balancing         = true
#   disk_type                   = "pd-standard"
#   disk_size_gb                = "100"
#   release_channel             = "STABLE"
#   auto_upgrade                = true
#   auto_repair                 = true
#   network                     = "tier-1-bank-mgmt-dev-vpc-1"
#   subnetwork                  = "tier-1-bank-eu-we2-mgmt-dev-subnet"
#   subnet_region               = "europe-west2"
# }

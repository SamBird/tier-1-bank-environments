# main.tf
provider "google" {
  region      = "europe-west2"
}

module "gcp_project" {
  source              = "../../tier-1-bank-tf-modules/gcp-project"
  project_name        = "mgmt-dev-tier-1-bank"
  project_id          = "mgmt-dev-tier-1-bank"
  org_id              = "451885795527"
  billing_account_id  = "01295E-022F84-BB7A42" 
  auto_create_network = "false"
  labels              = {
    environment = "mgmt-dev"
    team        = "management"
    cost_center = "11111"
  }
  api_list            = [
    "cloudresourcemanager.googleapis.com",
    "serviceusage.googleapis.com",
    "iam.googleapis.com",
    "compute.googleapis.com",
    "storage.googleapis.com",
    "logging.googleapis.com",
    "monitoring.googleapis.com",
    "container.googleapis.com",
    "servicenetworking.googleapis.com"
  ]
}

module "gcp_network" {
  source              = "../../tier-1-bank-tf-modules/gcp-vpc"
  host_project_id     = "mgmt-dev-tier-1-bank"
  vpc_name            = "tier-1-bank-mgmt-dev-vpc-1"
  description         = "MGMT Shared VPC Dev"
  
  service_projects = {
    "dev-tier1-bank" = {
      project_num   = "352420792469"
      subnet_name   = "tier-1-bank-eu-we2-dev-tooling-subnet"
      subnet_cidr   = "192.168.1.0/28"
      subnet_region = "europe-west2"
    }
  }

}

project_name        = "dev-tier1-bank"
project_id          = "dev-tier1-bank"
org_id              = "451885795527"
billing_account_id  = "01295E-022F84-BB7A42" 
auto_create_network = false

labels = {
  environment = "dev"
  team        = "engineering"
  cost_center = "12345"
}

api_list = [
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

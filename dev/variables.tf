variable "project_name" {
  description = "The name of the GCP project."
  type        = string
}

variable "project_id" {
  description = "The ID of the GCP project."
  type        = string
}

variable "org_id" {
  description = "The organization ID of the GCP project."
  type        = string
}

variable "billing_account_id" {
  description = "The billing account ID of the GCP project."
  type        = string
}

variable "auto_create_network" {
  description = "Whether to auto-create the VPC network."
  type        = bool
}

variable "labels" {
  description = "Labels to be applied to the GCP project."
  type        = map(string)
}

variable "api_list" {
  description = "List of APIs to enable for the GCP project."
  type        = list(string)
}

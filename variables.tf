variable "project_id" {
  type        = string
  default       = "bs-gcp-free"
  description = "Your Google Cloud project ID"
}

variable "region" {
  type        = string
  value       = "us-central1"
  description = "The region where BigQuery resources will be created"
  default = "US" #  A reasonable default, but should be adjusted
}

variable "dataset_id" {
  type        = string
  description = "The ID of the BigQuery dataset to create"
}

variable "location" {
  type        = string
  description = "The geographic location for the dataset"
  default = "US"
}

variable "description" {
  type        = string
  description = "A description for the dataset"
  default = "My Terraform-created dataset"
}

variable "environment" {
  type = string
  description = "Environment label for the dataset"
  default = "dev"
}

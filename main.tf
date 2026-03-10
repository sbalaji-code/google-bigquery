terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"  # Specify a version constraint
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_bigquery_dataset" "new_dataset" {
  dataset_id = var.dataset_id
  location = var.location
  description = var.description
  project = var.project_id
  labels = {
    environment = var.environment
  }
}

# Optional:  Create a table within the dataset (example)
# resource "google_bigquery_table" "example_table" {
#   dataset_id = google_bigquery_dataset.new_dataset.dataset_id
#   table_id = "my_example_table"
#   schema = jsonencode([
#     {
#       name = "id"
#       type = "INT64"
#       mode = "REQUIRED"
#     },
#     {
#       name = "name"
#       type = "STRING"
#       mode = "NULLABLE"
#     }
#   ])
# }

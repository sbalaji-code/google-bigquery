terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"  # Specify a version constraint
    }
  }
}
 
provider "google" {
  project = "bs-gcp-free"
  region  = "us-central1"
  zone    = "us-central1-a"
}

resource "google_bigquery_dataset" "new_dataset" {
  dataset_id = "new-dataset-tf"
  location = "US"
  description = "new dataset tf"
  project = "bs-gcp-free"
  labels = {
    environment = "development"
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

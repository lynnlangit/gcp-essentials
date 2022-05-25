# Terraform Examples: https://www.terraform.io/docs/providers/google/r/storage_bucket.html

# Create a GCS bucket
resource "google_storage_bucket" "my_bucket" {
  name = "my-bucket"
  location = "us-central1"
}

# Create a GCS bucket with a CORS policy
resource "google_storage_bucket" "my_bucket_with_cors" {
  name = "my-bucket-with-cors"
  location = "us-central1"

  cors_policy {
    max_age_seconds = 3600
    origins         = ["https://example.com"]
    methods         = ["GET", "POST"]
    response_headers = ["Content-Type"]
  }
}

# Create a GCS bucket with a lifecycle policy
resource "google_storage_bucket" "my_bucket_with_lifecycle" {
  name = "my-bucket-with-lifecycle"
  location = "us-central1"

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 365
    }
  }
}


resource "google_cloudfunctions_function" "gcp_function" {
   name        = "my-gcp-function"
   description = "My first GCP function"
   runtime     = "nodejs18"
   source_archive_bucket = google_storage_bucket.gcp_function_bucket.name
   source_archive_object = google_storage_bucket_object.gcp_function_archive.name
   trigger_http = true
   entry_point = "handler"
}



resource "google_storage_bucket" "gcp_function_bucket" {
   name = "my-gcp-function-bucket"
   location = "EU"
}
resource "google_storage_bucket_object" "gcp_function_archive" {
   name = "archive.zip"
   source = "archive.zip"
   bucket = google_storage_bucket.gcp_function_bucket.name
}

data "archive_file" "archive" {
  type        = "zip"
  output_path = "archive.zip"
  source_dir  = "${path.module}/../src"
}
resource "google_bigquery_dataset" "tf-gcp-challenge-dataset" {
  dataset_id                  = "tf_gcp_challenge_dataset"
  friendly_name               = "Example Dataset"
  description                 = "This is an example dataset."
  location                    = var.location
  default_table_expiration_ms = 3600000
}

resource "google_bigquery_table" "tf-gcp-challenge-table" {
  dataset_id = google_bigquery_dataset.tf-gcp-challenge-dataset.dataset_id
  table_id   = "tf-gcp-challenge-table"

  schema = <<EOF
[
  {
    "name": "name",
    "type": "STRING",
    "mode": "REQUIRED"
  },
  {
    "name": "age",
    "type": "INTEGER",
    "mode": "REQUIRED"
  }
]
EOF
}
// Unfunctionnal uri error
/*external_data_configuration {
    autodetect    = true
    source_format = "CSV"

    source_uris = ["${google_storage_bucket_object.example_object.self_link}/example_object.csv"]
  }
}*/

resource "google_storage_bucket" "tf-gcp-chalenge-cabot-victor-big-query-bucket" {
  name = "tf-gcp-chalenge-cabot-victor-big-query-bucket"
  location = var.location
}

/*resource "google_storage_bucket_object" "example_object" {
  name   = "example_object.csv"
  bucket = google_storage_bucket.tf-gcp-chalenge-cabot-victor-big-query-bucket.name
  source = "${path.module}"
}*/


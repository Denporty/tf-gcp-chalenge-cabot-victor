resource "google_storage_bucket" "tf-gcp-chalenge-cabot-victor-storage" {
  name                        = "tf-gcp-chalenge-cabot-victor-storage"
  location                    = "EU"
  force_destroy               = true
}

resource "google_storage_bucket" "tf-gcp-chalenge-cabot-victor-big-query-storage" {
  name                        = "tf-gcp-chalenge-cabot-victor-big-query-storage"
  location                    = "EU"
  force_destroy               = true
}
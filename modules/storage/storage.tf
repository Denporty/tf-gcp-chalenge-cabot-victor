resource "google_storage_bucket" "tf-gcp-chalenge-cabot-victor-storage" {
  name                        = "tf-gcp-chalenge-cabot-victor-storage"
  location                    = "EU"
  force_destroy               = true
}
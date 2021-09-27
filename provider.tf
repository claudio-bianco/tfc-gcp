provider "google" {
  # version     = "2.7.0"
  credentials = var.GOOGLE_CREDENTIALS
  project     = var.project
  region      = var.region
}
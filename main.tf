resource "google_container_cluster" "primary" {
  name               = var.cluster
  location           = var.zone
  initial_node_count = 3

  master_auth {
    username = ""
    password = ""

    client_certificate_config {
      issue_client_certificate = false
    }
  }

  node_config {
    machine_type = "n1-standard-1"
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    metadata = {
      disable-legacy-endpoints = "true"
    }

    labels = {
      app = var.project

    }

    tags = ["gke-node", "${var.project}-gke"]
  }

  timeouts {
    create = "30m"
    update = "40m"
  }
}
variable "project" {
  default = "desafio-devops-325423"
}

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-c"
}

variable "cluster" {
  default = "cicd-workshops"
}

variable "credentials" {
#  default = "~/.ssh/cicd_demo_gcp_creds.json"
  default = "GOOGLE_CREDENTIALS"
}

variable "kubernetes_min_ver" {
  default = "latest"
}

variable "kubernetes_max_ver" {
  default = "latest"
}

variable "GOOGLE_CREDENTIALS" {
  type = string
}
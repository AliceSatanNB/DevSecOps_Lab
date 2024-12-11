terraform {
  required_providers {
    nexus = {
      source = "datadrivers/nexus"
      version = "2.5.0"
    }
  }
}

provider "nexus" {
  insecure = true
  url = var.nexus_host
  username = var.nexus_login
  password = var.nexus_password
}

resource "nexus_blobstore_file" "file" {
  name = "test2"
  path = "/nexus-data/blobs/test2"

}
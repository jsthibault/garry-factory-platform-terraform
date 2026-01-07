resource "hcloud_server" "garry_factory_1" {
  name        = "garry-factory-1"
  image       = var.server_image
  server_type = var.server_type
  location    = var.server_location

  labels = {
    project     = "garry-factory"
    environment = "prod"
    role        = "api"
    managed_by  = "terraform"
    repo        = "garry-factory-platform-terraform"
  }
}

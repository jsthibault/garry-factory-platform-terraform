resource "hcloud_firewall" "garry_factory" {
  name = "garry-factory-firewall"

  labels = {
    project    = "garry-factory"
    managed_by = "terraform"
  }

  rule {
    description = "SSH"
    direction   = "in"
    protocol    = "tcp"
    port        = "22"
    source_ips  = ["0.0.0.0/0", "::/0"]
  }

  rule {
    description = "App port 8080"
    direction   = "in"
    protocol    = "tcp"
    port        = "8080"
    source_ips  = ["0.0.0.0/0", "::/0"]
  }

  rule {
    description = "App port 8081"
    direction   = "in"
    protocol    = "tcp"
    port        = "8081"
    source_ips  = ["0.0.0.0/0", "::/0"]
  }
}

resource "hcloud_server" "garry_factory_1" {
  name        = "garry-factory-1"
  image       = var.server_image
  server_type = var.server_type
  location    = var.server_location

  firewall_ids = [hcloud_firewall.garry_factory.id]

  labels = {
    project     = "garry-factory"
    environment = "prod"
    role        = "generic-server"
    managed_by  = "terraform"
    repo        = "garry-factory-platform-terraform"
  }
}

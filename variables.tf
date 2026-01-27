variable "hcloud_token" {
  description = "Hetzner Cloud API Token"
  type        = string
  sensitive   = true
}

variable "gandi_personal_access_token" {
  description = "Gandi Personal Access Token"
  type        = string
  sensitive   = true
}

variable "server_location" {
  description = "Location for the Hetzner server"
  type        = string
  default     = "nbg1"
}

variable "server_type" {
  description = "Type of the Hetzner server (e.g. cx22)"
  type        = string
}

variable "server_image" {
  description = "Image of the Hetzner server (e.g. ubuntu-24.04)"
  type        = string
}

variable "ssh_public_key" {
  description = "SSH public key for accessing the Hetzner server"
  type        = string
}

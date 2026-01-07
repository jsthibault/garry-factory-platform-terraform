terraform {
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "~> 1.45"
    }
    gandi = {
      source  = "go-gandi/gandi"
      version = "~> 2.3"
    }
  }
}

provider "hcloud" {
  token = var.hcloud_token
}

provider "gandi" {
  personal_access_token = var.gandi_personal_access_token
}

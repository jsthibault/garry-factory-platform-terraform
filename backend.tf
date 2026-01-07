terraform {
  backend "remote" {
    organization = "garry-factory"

    workspaces {
      prefix = "garry-factory-platform-terraform-"
    }
  }
}

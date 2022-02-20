# Backend accessible via app.terrafrom.io

terraform {
  backend "remote" {
    organization = "example-org-983800"

    workspaces {
      name = "jamstack-example"
    }
  }

  required_version = ">= 0.13.0"
}

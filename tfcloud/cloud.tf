terraform {
  cloud {
    organization = "iss-compute"

    workspaces {
      name = "my-example"
    }
  }
}

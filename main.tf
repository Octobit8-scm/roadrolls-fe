terraform {
  cloud {
    organization = "Octobit8-Private-Limited"

    workspaces {
      name = "prod-be"
    }
  }
}
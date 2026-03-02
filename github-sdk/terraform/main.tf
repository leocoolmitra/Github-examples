terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "6.11.1"
    }
  }
}

provider "github" {
  owner = "leoGH900"
  token = var.github_token

}

variable "github_token" {
  type      = string
  sensitive = true
}



resource "github_branch" "development" {
  repository = "Github-examples"
  branch     = "sdks"
}
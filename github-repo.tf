
terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}


provider "github" {
  token="github_pat_11A7IUKZY0nKJj6Wy4ntsY"

}
resource "github_repository" "example" {
  name        = "example"
 

  visibility = "public"
}

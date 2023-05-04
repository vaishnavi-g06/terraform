
# terraform {
#   required_providers {
#     github = {
#       source  = "integrations/github"
#       version = "~> 5.0"
#     }
#   }
# }

# # Configure the GitHub Provider

# provider "github" {
#   token="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"

# }
# resource "github_repository" "example" {
#   name        = "example"
#   description = "My awesome codebase"

#   visibility = "public"
# }
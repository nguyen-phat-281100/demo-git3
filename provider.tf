provider "github" {
  # source  = "integrations/github"
  # version = "4.11.0"  # Replace with the desired version
  token        = "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"
}


resource "github_repository" "example" {
  description = "My demo Git repository"
  private     = false
  auto_init   = true
}


resource "github_branch" "example" {
  repository = github_repository.example.name
  branch     = "branch3"
}

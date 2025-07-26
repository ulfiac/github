resource "github_repository" "terraform_repo" {
  name        = var.repo_name
  description = var.repo_description

  allow_auto_merge    = false
  allow_merge_commit  = false
  allow_rebase_merge  = false
  allow_squash_merge  = true
  allow_update_branch = true

  auto_init = true

  delete_branch_on_merge = true

  has_discussions = false
  has_downloads   = false
  has_issues      = true
  has_projects    = false
  has_wiki        = false

  gitignore_template = "Terraform"
  license_template   = "mit"

  visibility = "private"

  vulnerability_alerts = true
}

resource "github_branch_default" "default" {
  repository = github_repository.terraform_repo.name
  branch     = "main"
}

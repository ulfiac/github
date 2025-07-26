resource "github_repository" "terraform_repo" {
  name        = var.name
  description = var.description

  allow_auto_merge    = false
  allow_merge_commit  = false
  allow_rebase_merge  = false
  allow_squash_merge  = true
  allow_update_branch = true

  archived           = false
  archive_on_destroy = false

  auto_init = true

  delete_branch_on_merge = true

  has_discussions = false
  has_downloads   = false
  has_issues      = true
  has_projects    = false
  has_wiki        = false

  gitignore_template = "Terraform"
  license_template   = "mit"

  visibility = var.visibility

  vulnerability_alerts = true
}

resource "github_branch_default" "default" {
  repository = github_repository.terraform_repo.name
  branch     = "main"
}

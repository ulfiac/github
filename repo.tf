module "terraform_repo" {
  for_each = local.terraform_repos

  source = "./modules/terraform_repo"

  repo_name        = each.key
  repo_description = each.value.repo_description
}

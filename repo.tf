module "terraform_repo" {
  for_each = local.terraform_repos

  source = "./modules/terraform_repo"

  name        = each.key
  description = each.value.repo_description
  visibility  = each.value.repo_visibility
}

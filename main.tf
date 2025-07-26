locals {
  terraform_repos = {
    test-public-repo = {
      repo_description = "test public repo"
      repo_visibility  = "public"
    }
    test-private-repo = {
      repo_description = "test private repo"
      repo_visibility  = "private"
    }
  }
}

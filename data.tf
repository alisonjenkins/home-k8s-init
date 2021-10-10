data "flux_install" "main" {
  target_path = var.flux_git_repository_target_path
}

data "flux_sync" "main" {
  target_path = var.flux_git_repository_target_path
  url         = "ssh://git@github.com/${var.flux_git_repo_owner}/${var.flux_git_repo_name}.git"
  branch      = var.flux_git_repo_branch
}

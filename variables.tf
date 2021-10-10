variable "flux_git_repo_branch" {
  default     = "main"
  description = "The branch to use on the Flux Git repository."
  type        = string
}

variable "flux_git_repo_owner" {
  description = "The Github owning user / organisation of the Flux repository."
  type        = string
}

variable "flux_git_repo_name" {
  description = "The github repository name for the Flux repository."
  type        = string
}

# variable "github_token" {
#   description = "The Github token used to authenticate with Github for provisioning the resources for Flux."
#   type        = string
# }

variable "flux_github_repository_visibility" {
  default     = "private"
  description = "Whether to make the Flux Github repository public or private."
  type        = string
}

variable "flux_git_repository_target_path" {
  default     = "cluster"
  description = "The folder path within the Git repository to use for the cluster."
  type        = string
}

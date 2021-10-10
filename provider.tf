provider "flux" {}
provider "kubectl" {}

provider "kubernetes" {
  config_context = "home-cluster"
  config_path    = "~/.kube/config"
}

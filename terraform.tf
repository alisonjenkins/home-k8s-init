terraform {
  required_version = ">= 1.0"

  required_providers {
    flux = {
      source  = "fluxcd/flux"
      version = ">= 0.0.13"
    }
    github = {
      source  = "integrations/github"
      version = ">= 4.5.2"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.10.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.2"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "3.1.0"
    }
  }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "alanjenkins"
    workspaces {
      name = "k8s-init"
    }
  }
}

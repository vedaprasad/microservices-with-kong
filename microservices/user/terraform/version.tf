terraform {
  required_version = ">= 1.0"

    backend "s3" {

    bucket         = "ved-tf-state"
    key            = "user-state.tf"
    region         = "ap-southeast-2"
   }

  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.9"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.20"
    }
     argocd = {
      source  = "oboukili/argocd"
      version = ">=6.0.3"
    }
}
}
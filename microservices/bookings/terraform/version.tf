terraform {

   backend "s3" {

    bucket         = "ved-tf-state"
    key            = "bookings-state.tf"
    region         = "ap-southeast-2"
   }

   required_version = ">= 1.0"

  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.9"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.20"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
     argocd = {
      source  = "oboukili/argocd"
      version = ">=6.0.3"
    }
}
}
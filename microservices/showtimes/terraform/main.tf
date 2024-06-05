resource "argocd_application" "helm" {
  metadata {
    name      = "showtimes"
    namespace = "argocd"
  }

  spec {
    destination {
      server    = "https://kubernetes.default.svc"
      namespace = "default"
    }

    source {
      repo_url        = "registry-1.docker.io"
      chart           = "vedaprasad/showtimes"
      target_revision = "0.1.0"
      helm {
        release_name = "showtimes"
        parameter {
          name  = "replicacount"
          value = "1"
        }
        parameter {
          name  = "servicename"
          value = "showtimes"
        }
      }
    }
      sync_policy {
      automated {
        prune       = true
        self_heal   = true
        allow_empty = true
      }
      # Only available from ArgoCD 1.5.0 onwards
      sync_options = ["Validate=false"]
      retry {
        limit = "5"
        backoff {
          duration     = "30s"
          max_duration = "2m"
          factor       = "2"
        }
      }
    }
  }
}

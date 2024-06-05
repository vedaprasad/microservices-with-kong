resource "argocd_application" "helm" {
  metadata {
    name      = "user"
    namespace = "argocd"
  }

  spec {
    destination {
      server    = "https://kubernetes.default.svc"
      namespace = "default"
    }

    source {
      repo_url        = "registry-1.docker.io"
      chart           = "vedaprasad/user"
      target_revision = "0.1.0"
      helm {
        release_name = "user"
        parameter {
          name  = "replicacount"
          value = "1"
        }
        parameter {
          name  = "servicename"
          value = "user"
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

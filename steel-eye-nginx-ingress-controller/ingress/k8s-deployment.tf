resource "kubernetes_deployment" "example_deployment" {
  metadata {
    name = "example-deployment"
  }

  spec {
    replicas = 4

    selector {
      match_labels = {
        app = "steel-eye-app"
      }
    }

    template {
      metadata {
        labels = {
          app = "steel-eye-app"
        }
      }

      spec {
        container {
          image = "hashicorp/http-echo"
          name  = "simple-steel-eye-app2"
          args  = ["-text=Hello from my simple-steel-eye-app2"]
        }
      }
    }
  }
}
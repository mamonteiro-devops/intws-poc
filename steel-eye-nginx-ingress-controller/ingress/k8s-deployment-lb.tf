resource "kubernetes_deployment" "example_deployment_lb" {
  metadata {
    name = "deployment-lb"
  }

  spec {
    replicas = 4

    selector {
      match_labels = {
        app = "steel-eye-app-lb"
      }
    }

    template {
      metadata {
        labels = {
          app = "steel-eye-app-lb"
        }
      }

      spec {
        container {
          image = "hashicorp/http-echo"
          name  = "simple-steel-eye"
          args  = ["-text=Hello from my LoadBalancer - simple-steel-eye"]
        }
      }
    }
  }
}


resource "kubernetes_ingress_v1" "hello_kubernetes" {
  metadata {
    name = "hello-kubernetes"
    annotations = {
      "alb.ingress.kubernetes.io/scheme"               = "internet-facing"
      "kubernetes.io/ingress.class"          = "alb"
    }
  }
  spec {
    rule {
      http {
        path {
          backend {
            service {
              name = "steel-eye-app1-service"
              port {
                number = 5678
              }
            }
          }
          path = "/app1"
        }
      }
    }
  }
}

resource "kubernetes_deployment" "hello_kubernetes" {
  metadata {
    name = "hello-kubernetes"
  }

  spec {
    selector {
      match_labels = {
        name = "hello-kubernetes"
      }
    }

    template {
      metadata {
        labels = {
          name = "hello-kubernetes"
        }
      }

      spec {
        container {
          image = "hashicorp/http-echo"
          name  = "simple-steel-eye-app1"
          args  = ["-text=Hello from my simple-steel-eye-app1"]
        }
      }
    }
  }
}
#resource "kubernetes_ingress_v1" "ingress" {
#  wait_for_load_balancer = true
#  metadata {
#    name = "simple-steel-eye-ingress"
#  }
#  spec {
#    ingress_class_name = "nginx"
#    rule {
#      http {
#        path {
#          backend {
#            service {
#              name = "simple-steel-eye-app1-service"
#              port {
#                number = 5678
#              }
#            }
#          }
#          path = "/app1"
#        }
#        path {
#          backend {
#            service {
#              name = "simple-steel-eye-app2-service"
#              port {
#                number = 5678
#              }
#            }
#          }
#          path = "/app2"
#        }
#      }
#    }
#  }
#}

resource "kubernetes_ingress_v1" "ingress-deployment" {
  wait_for_load_balancer = true
  metadata {
    name = "deployment-steel-eye-ingress"
  }
  spec {
    ingress_class_name = "nginx"
    rule {
      http {
        path {
          backend {
            service {
              name = "deployment-steel-eye-app2-service"
              port {
                number = 5678
              }
            }
          }
          path = "/app2"
        }
      }
    }
  }
}

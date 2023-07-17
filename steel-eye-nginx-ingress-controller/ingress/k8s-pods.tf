#resource "kubernetes_pod_v1" "app1" {
#  metadata {
#    name = "simple-steel-eye-app1"
#    labels = {
#      "app" = "steel-eye-app-pods"
#    }
#  }
#
#  spec {
#    container {
#      image = "hashicorp/http-echo"
#      name  = "simple-steel-eye-app1"
#      args  = ["-text=Hello from my simple-steel-eye-app1"]
#    }
#  }
#}
#
#resource "kubernetes_pod_v1" "app2" {
#  metadata {
#    name = "simple-steel-eye-app2"
#    labels = {
#      "app" = "steel-eye-app-pods"
#    }
#  }
#
#  spec {
#    container {
#      image = "hashicorp/http-echo"
#      name  = "simple-steel-eye-app2"
#      args  = ["-text=Hello from my simple-steel-eye-app2"]
#    }
#  }
#}

resource "kubernetes_deployment" "example_deployment_ing_app1" {
  metadata {
    name = "deployment-ing-app1"
  }

  spec {
    replicas = 4

    selector {
      match_labels = {
        app = "steel-eye-app-ing-app1"
      }
    }

    template {
      metadata {
        labels = {
          app = "steel-eye-app-ing-app1"
        }
      }

      spec {
        container {
          image = "hashicorp/http-echo"
          name  = "simple-steel-eye-app1"
          args  = ["-text=Hello I am using an Loadbalancer + ingress  + app1"]
        }
      }
    }
  }
}

resource "kubernetes_deployment" "example_deployment_ing_app2" {
  metadata {
    name = "deployment-ing-app2"
  }

  spec {
    replicas = 4

    selector {
      match_labels = {
        app = "steel-eye-app-ing-app2"
      }
    }

    template {
      metadata {
        labels = {
          app = "steel-eye-app-ing-app2"
        }
      }

      spec {
        container {
          image = "hashicorp/http-echo"
          name  = "simple-steel-eye-app2"
          args  = ["-text=Hello I am using an Loadbalancer + ingress + app2"]
        }
      }
    }
  }
}
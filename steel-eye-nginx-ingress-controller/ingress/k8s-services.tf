resource "kubernetes_service_v1" "app1_service-ing" {
  metadata {
    name = "steel-eye-app1-service"
  }
  spec {
    #The "selector" field is used to select the Pods that the Service will route traffic to.
    #In this case, the value of the "app" label in the Deployment's selector is used.
    selector = {
      app = kubernetes_deployment.example_deployment_ing_app1.spec.0.selector.0.match_labels.app
    }
    port {
      port = 5678
    }
  }
}

resource "kubernetes_service_v1" "app2_service-ing" {
  metadata {
    name = "steel-eye-app2-service"
  }
  spec {
    #The "selector" field is used to select the Pods that the Service will route traffic to.
    #In this case, the value of the "app" label in the Deployment's selector is used.
    selector = {
      app = kubernetes_deployment.example_deployment_ing_app2.spec.0.selector.0.match_labels.app
    }
    port {
      port = 5678
    }
  }
}

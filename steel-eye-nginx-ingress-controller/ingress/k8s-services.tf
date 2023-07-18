resource "kubernetes_service_v1" "service-ing" {
  metadata {
    name = "service-ing"
  }
  spec {
    #The "selector" field is used to select the Pods that the Service will route traffic to.
    #In this case, the value of the "app" label in the Deployment's selector is used.
    selector = {
      app = kubernetes_deployment.example_deployment_ing.spec.0.selector.0.match_labels.app
    }
    port {
      port = 5678
    }
  }
}

resource "kubernetes_service_v1" "service-lb" {
  metadata {
    name = "service-lb"
  }
  spec {
    #The "selector" field is used to select the Pods that the Service will route traffic to.
    #In this case, the value of the "app" label in the Deployment's selector is used.
    selector = {
      app = kubernetes_deployment.example_deployment_lb.spec.0.selector.0.match_labels.app
    }
    port {
      port = 5678
    }
    type = "LoadBalancer"
  }
}
resource "kubernetes_service_v1" "app2_service" {
  metadata {
    name = "deployment-steel-eye-app2-service"
  }
  spec {
    #The "selector" field is used to select the Pods that the Service will route traffic to.
    #In this case, the value of the "app" label in the Deployment's selector is used.
    selector = {
      app = kubernetes_deployment.example_deployment.spec.0.selector.0.match_labels.app
    }
    port {
      port = 5678
    }
  }
}
resource "helm_release" "strimzi" {
  chart = "./charts/strimzi-kafka-operator"
  name = "strimzi"
  namespace = "kafka"
  repository = "./"
  version = "0.28.0"
  values = [yamlencode({
    resources = {
      requests = {
        memory = "512Mi"
        cpu = "250m"
      }
      limits = {
        memory = "1536Mi"
        cpu = "1000m"
      }
    }
  })]
}